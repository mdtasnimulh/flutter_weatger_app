// instance for getting the api data
class WeatherDataCurrent{
  final Current current;
  WeatherDataCurrent({required this.current});

  factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) =>
      WeatherDataCurrent(current: Current.fromJson(json['current']));
}

class Current {
  Current({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,});

  Current.fromJson(dynamic json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    temp = (json['temp'] as num?)?.round();
    feelsLike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'] as int?;
    dewPoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'] as int?;
    visibility = json['visibility'];
    windSpeed = (json['wind_speed'] as num?)?.toDouble();
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
  }
  num? dt;
  num? sunrise;
  num? sunset;
  int? temp;
  num? feelsLike;
  num? pressure;
  int? humidity;
  num? dewPoint;
  num? uvi;
  int? clouds;
  num? visibility;
  double? windSpeed;
  num? windDeg;
  num? windGust;
  List<Weather>? weather;
  Current copyWith({  num? dt,
    num? sunrise,
    num? sunset,
    int? temp,
    num? feelsLike,
    num? pressure,
    int? humidity,
    num? dewPoint,
    num? uvi,
    int? clouds,
    num? visibility,
    double? windSpeed,
    num? windDeg,
    num? windGust,
    List<Weather>? weather,
  }) => Current(  dt: dt ?? this.dt,
    sunrise: sunrise ?? this.sunrise,
    sunset: sunset ?? this.sunset,
    temp: temp ?? this.temp,
    feelsLike: feelsLike ?? this.feelsLike,
    pressure: pressure ?? this.pressure,
    humidity: humidity ?? this.humidity,
    dewPoint: dewPoint ?? this.dewPoint,
    uvi: uvi ?? this.uvi,
    clouds: clouds ?? this.clouds,
    visibility: visibility ?? this.visibility,
    windSpeed: windSpeed ?? this.windSpeed,
    windDeg: windDeg ?? this.windDeg,
    windGust: windGust ?? this.windGust,
    weather: weather ?? this.weather,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = dt;
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    map['temp'] = temp;
    map['feels_like'] = feelsLike;
    map['pressure'] = pressure;
    map['humidity'] = humidity;
    map['dew_point'] = dewPoint;
    map['uvi'] = uvi;
    map['clouds'] = clouds;
    map['visibility'] = visibility;
    map['wind_speed'] = windSpeed;
    map['wind_deg'] = windDeg;
    map['wind_gust'] = windGust;
    if (weather != null) {
      map['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,});

  Weather.fromJson(dynamic json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }
  num? id;
  String? main;
  String? description;
  String? icon;
  Weather copyWith({  num? id,
    String? main,
    String? description,
    String? icon,
  }) => Weather(  id: id ?? this.id,
    main: main ?? this.main,
    description: description ?? this.description,
    icon: icon ?? this.icon,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['main'] = main;
    map['description'] = description;
    map['icon'] = icon;
    return map;
  }

}