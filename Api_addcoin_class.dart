

import 'dart:convert';

List<Addcoin> addcoinFromJson(String str) => List<Addcoin>.from(json.decode(str).map((x) => Addcoin.fromJson(x)));

String addcoinToJson(List<Addcoin> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Addcoin {
  String coins;
  String rupees;

  Addcoin({
    required this.coins,
    required this.rupees,
  });

  factory Addcoin.fromJson(Map<String, dynamic> json) => Addcoin(
    coins: json["coins"],
    rupees: json["rupees"],
  );

  Map<String, dynamic> toJson() => {
    "coins": coins,
    "rupees": rupees,
  };
}
