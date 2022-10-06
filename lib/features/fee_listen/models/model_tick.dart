class ModelTick {

  ModelTick();

  ModelTick.fromJson(final Map<String, dynamic> json) {
    echoReq = json['echo_req'] != null
        ?  EchoReq.fromJson(json['echo_req'])
        : null;
    msgType = json['msg_type'];
    subscription = json['subscription'] != null
        ?  Subscription.fromJson(json['subscription'])
        : null;
    tick = json['tick'] != null ?  Tick.fromJson(json['tick']) : null;
  }
  EchoReq? echoReq;
  String? msgType;
  Subscription? subscription;
  Tick? tick;

  Map<String, dynamic> toJson() {
    final data =  <String, dynamic>{};
    if (echoReq != null) {
      data['echo_req'] = echoReq!.toJson();
    }
    data['msg_type'] = msgType;
    if (subscription != null) {
      data['subscription'] = subscription!.toJson();
    }
    if (tick != null) {
      data['tick'] = tick!.toJson();
    }
    return data;
  }
}

class EchoReq {

  EchoReq();

  EchoReq.fromJson(final Map<String, dynamic> json) {
    subscribe = json['subscribe'];
    ticks = json['ticks'];
  }
  int? subscribe;
  String? ticks;

  Map<String, dynamic> toJson() {
    final data =  <String, dynamic>{};
    data['subscribe'] = subscribe;
    data['ticks'] = ticks;
    return data;
  }
}

class Subscription {

  Subscription();

  Subscription.fromJson(final Map<String, dynamic> json) {
    id = json['id'];
  }
  String? id;

  Map<String, dynamic> toJson() {
    final data =  <String, dynamic>{};
    data['id'] = id;
    return data;
  }
}

class Tick {

  Tick();

  Tick.fromJson(final Map<String, dynamic> json) {
    try{
    ask =  json['ask'];
    }catch(e){
      final int tempAsk = json['ask'];
      ask = tempAsk.toDouble();
    }
    bid = json['bid'].toDouble();
    epoch = json['epoch'];
    id = json['id'];
    pipSize = json['pip_size'];
    quote = getDouble(json['quote']);
    symbol = json['symbol'];
  }
  double? ask;
  double? bid;
  int? epoch;
  String? id;
  int? pipSize;
  double? quote;
  String? symbol;

  Map<String, dynamic> toJson() {
    final data =  <String, dynamic>{};
    data['ask'] = ask;
    data['bid'] = bid;
    data['epoch'] = epoch;
    data['id'] = id;
    data['pip_size'] = pipSize;
    data['quote'] = quote;
    data['symbol'] = symbol;
    return data;
  }

  double getDouble(final dynamic data){
    try{
      final double value =  data;
      return value;
    }catch(e){
      final int tempValue = data;
      return tempValue.toDouble();
    }
  }
}
