
import 'package:weather/src/Model/weatherDataModel.dart';

class City {
  var cityName;
  var countryName;
  List<Weather> weatherDay;
  List<Weather> weatherHour;
  Weather weatherCurrent;

  City(
  { required this.cityName,
    required this.countryName,
    required this.weatherDay,
    required this.weatherHour,
    required this.weatherCurrent
  });

}
