import 'dart:ffi';

import 'package:weather/src/Model/weatherDataModel.dart';

class City {
  var cityName;
  var countryName;
  List<Weather> weather = List.empty(growable: true);

  City(
  { required this.cityName,
    required this.countryName,
    required this.weather
  });

  City.fromJson(Map<String, dynamic> json) {
    cityName = json['location']['name'];
    countryName = json['location']['country'];
    // var icon = json['current']['condition']['icon'];
    // var tinhtrang = json['current']['condition']['text'];
    // var nhietdo = json['current']['temp_c'];
    // var gio = json['current']['wind_kph'];
    // var doam = json['current']['humidity'];
    // var luongmua = json['current']['precip_mm'];
    // var khongkhi = getAirQuality(json['current']['air_quality']['pm2_5']);
    // var thoigian = json['current']['last_updated'];
    //
    // weather.add(new Weather(icon: icon, tinhtrang: tinhtrang, nhietdo: nhietdo, gio: gio, doam: doam, luongmua: luongmua, khongkhi: khongkhi, thoigian: thoigian));

    final list = json['forecast']['forecastday'] as List;

    for (var o in list) {
      var icon = o['day']['condition']['icon'];
      var tinhtrang = o['day']['condition']['text'];
      var nhietdo = o['day']['avgtemp_c'];
      var gio = o['day']['maxwind_kph'];
      var doam = o['day']['avghumidity'];
      var luongmua = o['day']['totalprecip_mm'];
      var khongkhi = getAirQuality(o['day']['air_quality']['pm2_5']);
      var thoigian = o['date'];
      weather.add(Weather(icon: icon, tinhtrang: tinhtrang, nhietdo: nhietdo, gio: gio, doam: doam, luongmua: luongmua, khongkhi: khongkhi, thoigian: thoigian));
    }
  }

  String getAirQuality(var PM25) {
    if (PM25 == null) {
      return "No Forecast";
    }
    String result = "Hazardous";
    double air = PM25;
    if (air <= 12) {
      result = "Good";
    } else if (air < 35.5){
      result = "Moderate";
    } else if (air <= 55.5){
      result = "Unhealthy for Sensitive Groups";
    } else if (air < 35.5){
      result = "Unhealthy";
    }
    return result;
  }

  @override
  String toString() {
    return 'City{' + "\n" +
        'cityName: $cityName,' + "\n" +
        ' countryName: $countryName, ' + "\n" + ''
        'weather: $weather}' + "\n";
  }
}
