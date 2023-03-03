// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

import 'package:hive/hive.dart';
import 'dart:convert';

part 'weather_model.g.dart';

WeatherModel weatherModelFromJson(String str) =>
    WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class WeatherModel {
  WeatherModel({
    this.location,
    this.current,
  });

  @HiveField(1)
  Location? location;
  @HiveField(2)
  Current? current;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        current:
            json["current"] == null ? null : Current.fromJson(json["current"]),
      );

  Map<String, dynamic> toJson() => {
        "location": location?.toJson(),
        "current": current?.toJson(),
      };
}

@HiveType(typeId: 2)
class Current {
  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  @HiveField(1)
  num? lastUpdatedEpoch;
  @HiveField(2)
  String? lastUpdated;
  @HiveField(3)
  num? tempC;
  @HiveField(4)
  num? tempF;
  @HiveField(5)
  num? isDay;
  @HiveField(6)
  Condition? condition;
  @HiveField(7)
  num? windMph;
  @HiveField(8)
  num? windKph;
  @HiveField(9)
  num? windDegree;
  @HiveField(10)
  String? windDir;
  @HiveField(11)
  num? pressureMb;
  @HiveField(12)
  num? pressureIn;
  @HiveField(13)
  num? precipMm;
  @HiveField(14)
  num? precipIn;
  @HiveField(15)
  num? humidity;
  @HiveField(16)
  num? cloud;
  @HiveField(17)
  num? feelslikeC;
  @HiveField(18)
  num? feelslikeF;
  @HiveField(19)
  num? visKm;
  @HiveField(20)
  num? visMiles;
  @HiveField(21)
  num? uv;
  @HiveField(22)
  num? gustMph;
  @HiveField(23)
  num? gustKph;

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        lastUpdatedEpoch: json["last_updated_epoch"],
        lastUpdated: json["last_updated"],
        tempC: json["temp_c"],
        tempF: json["temp_f"]?.toDouble(),
        isDay: json["is_day"],
        condition: json["condition"] == null
            ? null
            : Condition.fromJson(json["condition"]),
        windMph: json["wind_mph"]?.toDouble(),
        windKph: json["wind_kph"]?.toDouble(),
        windDegree: json["wind_degree"],
        windDir: json["wind_dir"],
        pressureMb: json["pressure_mb"],
        pressureIn: json["pressure_in"]?.toDouble(),
        precipMm: json["precip_mm"],
        precipIn: json["precip_in"],
        humidity: json["humidity"],
        cloud: json["cloud"],
        feelslikeC: json["feelslike_c"]?.toDouble(),
        feelslikeF: json["feelslike_f"]?.toDouble(),
        visKm: json["vis_km"],
        visMiles: json["vis_miles"],
        uv: json["uv"],
        gustMph: json["gust_mph"]?.toDouble(),
        gustKph: json["gust_kph"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "last updated epoch": lastUpdatedEpoch,
        "last updated": lastUpdated,
        "celcius": tempC,
        "fahrenheit": tempF,
        "wind mph": windMph,
        "wind kph": windKph,
        "wind degree": windDegree,
        "wind direction": windDir,
        "pressure mb": pressureMb,
        "pressure in": pressureIn,
        "precip mm": precipMm,
        "precip in": precipIn,
        "humidity": humidity,
        "cloud": cloud,
        "feelslike c": feelslikeC,
        "feelslike f": feelslikeF,
        "vis km": visKm,
        "vis miles": visMiles,
        "uv": uv,
        "gust mph": gustMph,
        "gust kph": gustKph,
      };
}

@HiveType(typeId: 3)
class Condition {
  Condition({
    this.text,
    this.icon,
    this.code,
  });

  @HiveField(1)
  String? text;
  @HiveField(2)
  String? icon;
  @HiveField(3)
  num? code;

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        text: json["text"],
        icon: json["icon"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "icon": icon,
        "code": code,
      };
}

@HiveType(typeId: 4)
class Location {
  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  @HiveField(1)
  String? name;
  @HiveField(2)
  String? region;
  @HiveField(3)
  String? country;
  @HiveField(4)
  num? lat;
  @HiveField(5)
  num? lon;
  @HiveField(6)
  String? tzId;
  @HiveField(7)
  num? localtimeEpoch;
  @HiveField(8)
  String? localtime;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        region: json["region"],
        country: json["country"],
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        tzId: json["tz_id"],
        localtimeEpoch: json["localtime_epoch"],
        localtime: json["localtime"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "region": region,
        "country": country,
        "lat": lat,
        "lon": lon,
        "tz_id": tzId,
        "localtime_epoch": localtimeEpoch,
        "localtime": localtime,
      };
}
