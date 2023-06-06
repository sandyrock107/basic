// To parse this JSON data, do
//
//     final coinmode = coinmodeFromJson(jsonString);

import 'dart:convert';

List<Coinmode> coinmodeFromJson(String str) => List<Coinmode>.from(json.decode(str).map((x) => Coinmode.fromJson(x)));

String coinmodeToJson(List<Coinmode> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Coinmode {
  String? date;
  String coin;
  String? proId;
  String userId;
  String? description;
  String? proCode;

  Coinmode({
    this.date,
    required this.coin,
    this.proId,
    required this.userId,
    this.description,
    this.proCode,
  });

  factory Coinmode.fromJson(Map<String, dynamic> json) => Coinmode(
    date: json["date"],
    coin: json["coin"],
    proId: json["pro_id"],
    userId: json["user_id"],
    description: json["description"],
    proCode: json["pro_code"],
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "coin": coin,
    "pro_id": proId,
    "user_id": userId,
    "description": description,
    "pro_code": proCode,
  };
}
