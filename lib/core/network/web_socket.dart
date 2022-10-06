import 'dart:convert';

import 'package:first_source_assessment/core/network/server_path.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketHandler{

  factory SocketHandler(final Function(dynamic event) listen) {
    listener = listen;
    return _webSocket;
  }

  SocketHandler._internal(){
    channel = WebSocketChannel.connect(
      Uri.parse(ServerPath.mainServer),
    );
    ///Receive data of send request in stream listener
    channel.stream.listen(listener);
  }

  static late WebSocketChannel channel;
  static final SocketHandler _webSocket = SocketHandler._internal();
  static late Function(dynamic event) listener;

  ///send request
  void sendRequest(final Map<String,dynamic> request){
    channel.sink.add(jsonEncode(request));
  }

}
