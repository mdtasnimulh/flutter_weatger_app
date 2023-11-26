class WeatherModel {
  WeatherModel({
      this.lat, 
      this.lon, 
      this.timezone, 
      this.timezoneOffset, 
      this.current, 
      this.minutely, 
      this.hourly, 
      this.daily,});

  WeatherModel.fromJson(dynamic json) {
    lat = json['lat'];
    lon = json['lon'];
    timezone = json['timezone'];
    timezoneOffset = json['timezone_offset'];
    current = json['current'] != null ? Current.fromJson(json['current']) : null;
    if (json['minutely'] != null) {
      minutely = [];
      json['minutely'].forEach((v) {
        minutely?.add(Minutely.fromJson(v));
      });
    }
    if (json['hourly'] != null) {
      hourly = [];
      json['hourly'].forEach((v) {
        hourly?.add(Hourly.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      daily = [];
      json['daily'].forEach((v) {
        daily?.add(Daily.fromJson(v));
      });
    }
  }
  num? lat;
  num? lon;
  String? timezone;
  num? timezoneOffset;
  Current? current;
  List<Minutely>? minutely;
  List<Hourly>? hourly;
  List<Daily>? daily;
WeatherModel copyWith({  num? lat,
  num? lon,
  String? timezone,
  num? timezoneOffset,
  Current? current,
  List<Minutely>? minutely,
  List<Hourly>? hourly,
  List<Daily>? daily,
}) => WeatherModel(  lat: lat ?? this.lat,
  lon: lon ?? this.lon,
  timezone: timezone ?? this.timezone,
  timezoneOffset: timezoneOffset ?? this.timezoneOffset,
  current: current ?? this.current,
  minutely: minutely ?? this.minutely,
  hourly: hourly ?? this.hourly,
  daily: daily ?? this.daily,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lon'] = lon;
    map['timezone'] = timezone;
    map['timezone_offset'] = timezoneOffset;
    if (current != null) {
      map['current'] = current?.toJson();
    }
    if (minutely != null) {
      map['minutely'] = minutely?.map((v) => v.toJson()).toList();
    }
    if (hourly != null) {
      map['hourly'] = hourly?.map((v) => v.toJson()).toList();
    }
    if (daily != null) {
      map['daily'] = daily?.map((v) => v.toJson()).toList();
    }
    return map;
  }

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
    min = json['min'];
    max = json['max'];
    night = json['night'];
    eve = json['eve'];
    morn = json['morn'];
  }
  num? day;
  num? min;
  num? max;
  num? night;
  num? eve;
  num? morn;
Temp copyWith({  num? day,
  num? min,
  num? max,
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
    dt = json['dt'];
    temp = json['temp'];
    feelsLike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'];
    visibility = json['visibility'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    pop = json['pop'];
  }
  num? dt;
  num? temp;
  num? feelsLike;
  num? pressure;
  num? humidity;
  num? dewPoint;
  num? uvi;
  num? clouds;
  num? visibility;
  num? windSpeed;
  num? windDeg;
  num? windGust;
  List<Weather>? weather;
  num? pop;
Hourly copyWith({  num? dt,
  num? temp,
  num? feelsLike,
  num? pressure,
  num? humidity,
  num? dewPoint,
  num? uvi,
  num? clouds,
  num? visibility,
  num? windSpeed,
  num? windDeg,
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

class Minutely {
  Minutely({
      this.dt, 
      this.precipitation,});

  Minutely.fromJson(dynamic json) {
    dt = json['dt'];
    precipitation = json['precipitation'];
  }
  num? dt;
  num? precipitation;
Minutely copyWith({  num? dt,
  num? precipitation,
}) => Minutely(  dt: dt ?? this.dt,
  precipitation: precipitation ?? this.precipitation,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = dt;
    map['precipitation'] = precipitation;
    return map;
  }

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
    temp = json['temp'];
    feelsLike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'];
    visibility = json['visibility'];
    windSpeed = json['wind_speed'];
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
  num? temp;
  num? feelsLike;
  num? pressure;
  num? humidity;
  num? dewPoint;
  num? uvi;
  num? clouds;
  num? visibility;
  num? windSpeed;
  num? windDeg;
  num? windGust;
  List<Weather>? weather;
Current copyWith({  num? dt,
  num? sunrise,
  num? sunset,
  num? temp,
  num? feelsLike,
  num? pressure,
  num? humidity,
  num? dewPoint,
  num? uvi,
  num? clouds,
  num? visibility,
  num? windSpeed,
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