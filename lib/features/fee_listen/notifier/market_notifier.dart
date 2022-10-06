import 'dart:convert';
import 'package:first_source_assessment/core/network/web_socket.dart';
import 'package:first_source_assessment/features/fee_listen/models/model_active_symbol.dart';
import 'package:first_source_assessment/features/fee_listen/models/model_tick.dart';
import 'package:first_source_assessment/features/fee_listen/notifier/trade_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final socketProvider = ChangeNotifierProvider<MarketProvider>((final ref) {
  return MarketProvider(ref);
});

class MarketProvider extends ChangeNotifier{

  MarketProvider(this.ref){
    getMarketPlace();
  }

  late final SocketHandler webSocket = SocketHandler(setUpListener());
  late ModelActiveSymbol modelActiveSymbol;
  late ModelTick modelTick;
  Map<String,List<ActiveSymbols>> uniqueActiveSymbolByMarketName = <String,List<ActiveSymbols>>{};
  late String selectedMarket;
  late ActiveSymbols selectedSymbol;
  double defaultPrice =-1;
  bool isSymbolChanged = true;
  final Ref ref;

  ///Get initial market places
  void getMarketPlace(){
    final activeSymbolRequest =<String,String>{
      'active_symbols': 'brief',
      'product_type': 'basic'
    };
    webSocket.sendRequest(activeSymbolRequest);

  }

  ///Listener of web socket called at every event
  Function(dynamic event) setUpListener(){
    return (final event) {
      final Map<String, dynamic> response = jsonDecode(event);

      /// Get all Market
      if (response['msg_type'] == 'active_symbols') {
        modelActiveSymbol = ModelActiveSymbol.fromJson(response);
        for (final element in modelActiveSymbol.activeSymbols!) {
          if (uniqueActiveSymbolByMarketName.containsKey(element.marketDisplayName)) {
            uniqueActiveSymbolByMarketName[element.marketDisplayName]?.add(element);
          }
          else {
            uniqueActiveSymbolByMarketName.putIfAbsent(element.marketDisplayName!, () => [element]);
          }
        }
        selectedMarket = uniqueActiveSymbolByMarketName.keys.first;
        selectedSymbol = uniqueActiveSymbolByMarketName[selectedMarket]![0];
        notifyListeners();
        getTickData(selectedSymbol);
      }

      /// Get Price base on selected market symbol
      if (response['msg_type'] == 'tick') {
        modelTick = ModelTick.fromJson(response);
        if(defaultPrice==-1 || isSymbolChanged){
          defaultPrice = modelTick.tick?.quote??-1;
          isSymbolChanged = false;
        }
        ref.read(tickProvider.state).state = AsyncData(modelTick);
      }
    }
    ;
  }

  ///Update selected value from drop-down
  void updateValue<T>(final T item){
    if(T == String){
      selectedMarket =item as String;
      selectedSymbol = uniqueActiveSymbolByMarketName[selectedMarket]![0];
    }
    else{
      selectedSymbol = item as ActiveSymbols;
    }
    isSymbolChanged = true;
    forgetOldTick();
    getTickData(selectedSymbol);
    notifyListeners();
  }

  ///Get price from web-socket of selected symbol
 void getTickData(final ActiveSymbols activeSymbols){
    final ticksRequest =<String,String>{
      'ticks': activeSymbols.symbol!,
      'subscribe': '1'
    };
    webSocket.sendRequest(ticksRequest);
  }

  ///Remove last symbol price before getting new symbol price
  void forgetOldTick(){
    final forgetTicksRequest =<String,String>{
      'forget': modelTick.tick?.id??'',
    };
    webSocket.sendRequest(forgetTicksRequest);
  }

}
