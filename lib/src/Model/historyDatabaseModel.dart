class HistoryDB {
  var id;
  var city;
  var country;
  var last_update;
  HistoryDB({
    this.id,
    required this.city,
    required this.country,
    required this.last_update
  });

  factory HistoryDB.fromJson(Map<String, dynamic> json) {
    return HistoryDB(
        id: json["id"],
        city: json["city"],
        country: json["country"],
        last_update: json['last_update']
    );

  }
}