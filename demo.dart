// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);
//
// import 'dart:convert';
//
// List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));
//
// String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Welcome {
//   String label;
//   String value;
//
//   Welcome({
//     required this.label,
//     required this.value,
//   });
//
//   factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//     label: json["label"],
//     value: json["value"],
//   );
//
//   get priceNum => null;
//
//   Map<String, dynamic> toJson() => {
//
//     "label": label,
//     "value": value,
//   };
// }
