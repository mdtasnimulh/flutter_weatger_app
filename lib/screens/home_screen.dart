import 'package:flutter/material.dart';
import 'package:flutter_weatger_app/controller/global_controller.dart';
import 'package:flutter_weatger_app/model/weather_data_current.dart';
import 'package:flutter_weatger_app/widgets/header_widget.dart';
import 'package:get/get.dart';

import '../widgets/current_weather.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //call controller
  final GlobalController globalController = Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
            () => globalController.checkLoading().isTrue ? const Center(
              child: CircularProgressIndicator(),
            ) : ListView(
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(height: 20,),
                const HeaderWidget(),
                // for current temperature
                CurrentWeather(
                  weatherDataCurrent: globalController.getWeatherData().getCurrentWeather(),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
