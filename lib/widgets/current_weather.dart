import 'package:flutter/material.dart';
import 'package:flutter_weatger_app/model/weather_data_current.dart';

class CurrentWeather extends StatelessWidget {

  final WeatherDataCurrent weatherDataCurrent;

  const CurrentWeather({super.key, required this.weatherDataCurrent,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${weatherDataCurrent.current.weather![0].description}'),
    );
  }
}

