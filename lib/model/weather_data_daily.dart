// instance for getting the api data
class WeatherDataDaily{
  List<Daily> daily;
  WeatherDataDaily({required this.daily});

  factory WeatherDataDaily.fromJson(Map<String, dynamic> json) =>
      WeatherDataDaily(daily: List<Daily>.from(json['daily'].map((e) => Daily.fromJson(e))));
}

class Daily {
  Daily({
    this.dt,
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.summary,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.clouds,
    this.pop,
    this.uvi,});

  Daily.fromJson(dynamic json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    moonrise = json['moonrise'];
    moonset = json['moonset'];
    moonPhase = json['moon_phase'];
    summary = json['summary'];
    temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
    feelsLike = json['feels_like'] != null ? FeelsLike.fromJson(json['feels_like']) : null;
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    clouds = json['clouds'];
    pop = json['pop'];
    uvi = json['uvi'];
  }
  num? dt;
  num? sunrise;
  num? sunset;
  num? moonrise;
  num? moonset;
  num? moonPhase;
  String? summary;
  Temp? temp;
  FeelsLike? feelsLike;
  num? pressure;
  num? humidity;
  num? dewPoint;
  num? windSpeed;
  num? windDeg;
  num? windGust;
  List<Weather>? weather;
  num? clouds;
  num? pop;
  num? uvi;
  Daily copyWith({  num? dt,
    num? sunrise,
    num? sunset,
    num? moonrise,
    num? moonset,
    num? moonPhase,
    String? summary,
    Temp? temp,
    FeelsLike? feelsLike,
    num? pressure,
    num? humidity,
    num? dewPoint,
    num? windSpeed,
    num? windDeg,
    num? windGust,
    List<Weather>? weather,
    num? clouds,
    num? pop,
    num? uvi,
  }) => Daily(  dt: dt ?? this.dt,
    sunrise: sunrise ?? this.sunrise,
    sunset: sunset ?? this.sunset,
    moonrise: moonrise ?? this.moonrise,
    moonset: moonset ?? this.moonset,
    moonPhase: moonPhase ?? this.moonPhase,
    summary: summary ?? this.summary,
    temp: temp ?? this.temp,
    feelsLike: feelsLike ?? this.feelsLike,
    pressure: pressure ?? this.pressure,
    humidity: humidity ?? this.humidity,
    dewPoint: dewPoint ?? this.dewPoint,
    windSpeed: windSpeed ?? this.windSpeed,
    windDeg: windDeg ?? this.windDeg,
    windGust: windGust ?? this.windGust,
    weather: weather ?? this.weather,
    clouds: clouds ?? this.clouds,
    pop: pop ?? this.pop,
    uvi: uvi ?? this.uvi,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = dt;
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    map['moonrise'] = moonrise;
    map['moonset'] = moonset;
    map['moon_phase'] = moonPhase;
    map['summary'] = summary;
    if (temp != null) {
      map['temp'] = temp?.toJson();
    }
    if (feelsLike != null) {
      map['feels_like'] = feelsLike?.toJson();
    }
    map['pressure'] = pressure;
    map['humidity'] = humidity;
    map['dew_point'] = dewPoint;
    map['wind_speed'] = windSpeed;
    map['wind_deg'] = windDeg;
    map['wind_gust'] = windGust;
    if (weather != null) {
      map['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    map['clouds'] = clouds;
    map['pop'] = pop;
    map['uvi'] = uvi;
    return map;
  }

}

class Temp {
  Temp({
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,});

  Temp.fromJson(dynamic json) {
    day = json['day'];
    min = (json['min'] as num?)?.round();
    max = (json['max'] as num?)?.round();
    night = json['night'];
    eve = json['eve'];
    morn = json['morn'];
  }
  num? day;
  int? min;
  int? max;
  num? night;
  num? eve;
  num? morn;
  Temp copyWith({  num? day,
    int? min,
    int? max,
    num? night,
    num? eve,
    num? morn,
  }) => Temp(  day: day ?? this.day,
    min: min ?? this.min,
    max: max ?? this.max,
    night: night ?? this.night,
    eve: eve ?? this.eve,
    morn: morn ?? this.morn,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['min'] = min;
    map['max'] = max;
    map['night'] = night;
    map['eve'] = eve;
    map['morn'] = morn;
    return map;
  }

}

class FeelsLike {
  FeelsLike({
    this.day,
    this.night,
    this.eve,
    this.morn,});

  FeelsLike.fromJson(dynamic json) {
    day = json['day'];
    night = json['night'];
    eve = json['eve'];
    morn = json['morn'];
  }
  num? day;
  num? night;
  num? eve;
  num? morn;
  FeelsLike copyWith({  num? day,
    num? night,
    num? eve,
    num? morn,
  }) => FeelsLike(  day: day ?? this.day,
    night: night ?? this.night,
    eve: eve ?? this.eve,
    morn: morn ?? this.morn,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['night'] = night;
    map['eve'] = eve;
    map['morn'] = morn;
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