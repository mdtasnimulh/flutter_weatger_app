// instance for getting the api data
class WeatherDataHourly{
  List<Hourly> hourly;
  WeatherDataHourly({required this.hourly});

  factory WeatherDataHourly.fromJson(Map<String, dynamic> json) =>
      WeatherDataHourly(hourly: List<Hourly>.from(json['hourly'].map((e) => Hourly.fromJson(e))));
}

class Hourly {
  Hourly({
    this.dt,
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
    this.weather,
    this.pop,});

  Hourly.fromJson(dynamic json) {
    dt = json['dt'] as int;
    temp = (json['temp'] as num?)?.round();
    feelsLike = json['feels_like'];
    pressure = json['pressure'] as int;
    humidity = json['humidity'] as int?;
    dewPoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'] as int?;
    visibility = json['visibility'] as int;
    windSpeed = (json['wind_speed'] as num?)?.toDouble();
    windDeg = json['wind_deg'] as int;
    windGust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    pop = json['pop'];
  }
  int? dt;
  int? temp;
  num? feelsLike;
  int? pressure;
  int? humidity;
  num? dewPoint;
  num? uvi;
  int? clouds;
  int? visibility;
  double? windSpeed;
  int? windDeg;
  num? windGust;
  List<Weather>? weather;
  num? pop;
  Hourly copyWith({
    int? dt,
    int? temp,
    num? feelsLike,
    int? pressure,
    int? humidity,
    num? dewPoint,
    num? uvi,
    int? clouds,
    int? visibility,
    double? windSpeed,
    int? windDeg,
    num? windGust,
    List<Weather>? weather,
    num? pop,
  }) => Hourly(  dt: dt ?? this.dt,
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
    pop: pop ?? this.pop,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = dt;
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
    map['pop'] = pop;
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