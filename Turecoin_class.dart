// To parse this JSON data, do
//
//     final truebroker = truebrokerFromJson(jsonString);

import 'dart:convert';

Truebroker truebrokerFromJson(String str) => Truebroker.fromJson(json.decode(str));

String truebrokerToJson(Truebroker data) => json.encode(data.toJson());

class Truebroker {
  String coin;
  dynamic uid;
  String error;
  String errorMsg;

  Truebroker({
    required this.coin,
    this.uid,
    required this.error,
    required this.errorMsg,
  });

  factory Truebroker.fromJson(Map<String, dynamic> json) => Truebroker(
    coin: json["coin"],
    uid: json["uid"],
    error: json["error"],
    errorMsg: json["error_msg"],
  );

  Map<String, dynamic> toJson() => {
    "coin": coin,
    "uid": uid,
    "error": error,
    "error_msg": errorMsg,
  };
}
