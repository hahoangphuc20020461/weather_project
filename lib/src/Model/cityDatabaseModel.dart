import 'package:flutter/foundation.dart';

class CityDB {
  var id;
  var name;
  var country;

  CityDB({this.id,
    required this.name,
    required this.country
  });

  factory CityDB.fromJson(Map<String, dynamic> json) {
    return CityDB(
        id: json["id"],
        name: json["name"],
        country: json["country"]);
  }
}