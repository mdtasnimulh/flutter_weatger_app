import 'package:flutter_weatger_app/api/fetch_weather.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../model/weather_data.dart';

class GlobalController extends GetxController{
  //create various variable
  final RxBool _isLoading = true.obs;
  final RxDouble _latitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;
  final RxInt _currentIndex = 0.obs;

  // instance for them to be called
  RxBool checkLoading() => _isLoading;
  RxDouble getLatitude() => _latitude;
  RxDouble getLongitude() => _longitude;

  final weatherData = WeatherData().obs;
  WeatherData getWeatherData(){
    return weatherData.value;
  }

  @override
  void onInit() {
    if(_isLoading.isTrue){
      getLocation();
    }else {
      getIndex();
    }
    super.onInit();
  }

  getLocation() async {
    bool isServiceEnabled;
    LocationPermission locationPermission;

    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    // return if service is not enabled.
    if(!isServiceEnabled){
      return Future.error("Location Service is not enabled.");
    }

    // check status of permission
    locationPermission = await Geolocator.checkPermission();

    if(locationPermission == LocationPermission.deniedForever){
      return Future.error("Location permission is denied forever.");
    }else if(locationPermission == LocationPermission.denied){
      // request permission
      locationPermission = await Geolocator.requestPermission();
    }

    //getting the current position
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    ).then((value) {
      // update our latitude and longitude
      _latitude.value = value.latitude;
      _longitude.value = value.longitude;
      print("${value.latitude},  ${value.longitude}");
      //calling weather api
      return FetchWeatherAPI()
          .processData(value.latitude, value.longitude)
          .then((value) {
            weatherData.value = value;
            _isLoading.value = false;
      });
    });
  }

  RxInt getIndex() {
    return _currentIndex;
  }
}