import 'dart:convert';

import 'package:flutter_weatger_app/api/api_key.dart';
import 'package:flutter_weatger_app/model/weather_data.dart';
import 'package:flutter_weatger_app/model/weather_data_current.dart';
import 'package:http/http.dart' as http;

class FetchWeatherAPI{

  WeatherData? weatherData;

  // processing the data from response => to json
  Future<WeatherData> proessData(lat, lon) async {
    var response = await http.get(Uri.parse(apiUrl(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonString));

    return weatherData!;
  }

}

String apiUrl(var lat, var lon) {
  String url;
  url = "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=$apiKey&units=metric";
  return url;
}