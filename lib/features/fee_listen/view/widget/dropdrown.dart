import 'package:first_source_assessment/features/fee_listen/models/model_active_symbol.dart';
import 'package:first_source_assessment/features/fee_listen/notifier/market_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class DropDown<T> extends ConsumerStatefulWidget {
  const DropDown({final Key? key}) : super(key: key);

  @override
  ConsumerState<DropDown<T>> createState() => _DropDownState();
}

class _DropDownState<T> extends ConsumerState<DropDown<T>> {

  late T dropDownValue;
  List<T> items = [];

  @override
  Widget build(final BuildContext context) {
    final socketNotifier = ref.watch(socketProvider);
    final activeSymbolsByMarketName = socketNotifier.uniqueActiveSymbolByMarketName;
    final marketNames = activeSymbolsByMarketName.keys;

    ///Market places
    if(T == String) {
      if (marketNames.isNotEmpty) {
        items = marketNames.toList() as List<T>;
        dropDownValue = socketNotifier.selectedMarket as T;
      }
      ///Symbols as per selected market
    }else{
      if (marketNames.isNotEmpty && activeSymbolsByMarketName.isNotEmpty) {
        items = activeSymbolsByMarketName[socketNotifier.selectedMarket] as List<T>;
        dropDownValue = socketNotifier.selectedSymbol as T;
      }
    }

    ///Generic dropdown
    return items.isNotEmpty? InputDecorator(
      decoration: const InputDecoration(border: OutlineInputBorder()),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(

          value: dropDownValue,
          icon: const Icon(Icons.keyboard_arrow_down),

          items: items.map((final T item) {
            return DropdownMenuItem<T>(
              value: item,
              child: T == String ? Text(item as String):  Text((item as ActiveSymbols).symbol??''),
            );
          }).toList(),

          onChanged: (final T? newValue) {
            socketNotifier.updateValue<T>(newValue as T);
          },
        ),
      ),
    ):Container();

  }
}
