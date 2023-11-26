import 'package:flutter/material.dart';
import 'package:flutter_weatger_app/controller/global_controller.dart';
import 'package:flutter_weatger_app/model/weather_data_current.dart';
import 'package:flutter_weatger_app/utils/custom_color.dart';
import 'package:flutter_weatger_app/widgets/comfort_level.dart';
import 'package:flutter_weatger_app/widgets/header_widget.dart';
import 'package:flutter_weatger_app/widgets/hourly_weather_widget.dart';
import 'package:get/get.dart';

import '../widgets/current_weather.dart';
import '../widgets/daily_data_forecast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //call controller
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => globalController.checkLoading().isTrue
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/clouds.png",
                        height: 200,
                        width: 200,
                      ),
                      const CircularProgressIndicator(),
                    ],
                  ),
                )
              : Center(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const HeaderWidget(),
                      // for current temperature
                      CurrentWeather(
                        weatherDataCurrent: globalController
                            .getWeatherData()
                            .getCurrentWeather(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      HourlyWeatherWidget(
                        weatherDataHourly: globalController
                            .getWeatherData()
                            .getHourlyWeather(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // for daily forecast
                      DailyDataForecast(
                        weatherDataDaily:
                            globalController.getWeatherData().getDailyWeather(),
                      ),
                      Container(
                        height: 1,
                        color: CustomColors.dividerLine,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ComfortLevel(
                          weatherDataCurrent: globalController
                              .getWeatherData()
                              .getCurrentWeather()),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
