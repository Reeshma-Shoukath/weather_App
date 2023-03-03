// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherModelAdapter extends TypeAdapter<WeatherModel> {
  @override
  final int typeId = 1;

  @override
  WeatherModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherModel(
      location: fields[1] as Location?,
      current: fields[2] as Current?,
    );
  }

  @override
  void write(BinaryWriter writer, WeatherModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.location)
      ..writeByte(2)
      ..write(obj.current);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CurrentAdapter extends TypeAdapter<Current> {
  @override
  final int typeId = 2;

  @override
  Current read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Current(
      lastUpdatedEpoch: fields[1] as num?,
      lastUpdated: fields[2] as String?,
      tempC: fields[3] as num?,
      tempF: fields[4] as num?,
      isDay: fields[5] as num?,
      condition: fields[6] as Condition?,
      windMph: fields[7] as num?,
      windKph: fields[8] as num?,
      windDegree: fields[9] as num?,
      windDir: fields[10] as String?,
      pressureMb: fields[11] as num?,
      pressureIn: fields[12] as num?,
      precipMm: fields[13] as num?,
      precipIn: fields[14] as num?,
      humidity: fields[15] as num?,
      cloud: fields[16] as num?,
      feelslikeC: fields[17] as num?,
      feelslikeF: fields[18] as num?,
      visKm: fields[19] as num?,
      visMiles: fields[20] as num?,
      uv: fields[21] as num?,
      gustMph: fields[22] as num?,
      gustKph: fields[23] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Current obj) {
    writer
      ..writeByte(23)
      ..writeByte(1)
      ..write(obj.lastUpdatedEpoch)
      ..writeByte(2)
      ..write(obj.lastUpdated)
      ..writeByte(3)
      ..write(obj.tempC)
      ..writeByte(4)
      ..write(obj.tempF)
      ..writeByte(5)
      ..write(obj.isDay)
      ..writeByte(6)
      ..write(obj.condition)
      ..writeByte(7)
      ..write(obj.windMph)
      ..writeByte(8)
      ..write(obj.windKph)
      ..writeByte(9)
      ..write(obj.windDegree)
      ..writeByte(10)
      ..write(obj.windDir)
      ..writeByte(11)
      ..write(obj.pressureMb)
      ..writeByte(12)
      ..write(obj.pressureIn)
      ..writeByte(13)
      ..write(obj.precipMm)
      ..writeByte(14)
      ..write(obj.precipIn)
      ..writeByte(15)
      ..write(obj.humidity)
      ..writeByte(16)
      ..write(obj.cloud)
      ..writeByte(17)
      ..write(obj.feelslikeC)
      ..writeByte(18)
      ..write(obj.feelslikeF)
      ..writeByte(19)
      ..write(obj.visKm)
      ..writeByte(20)
      ..write(obj.visMiles)
      ..writeByte(21)
      ..write(obj.uv)
      ..writeByte(22)
      ..write(obj.gustMph)
      ..writeByte(23)
      ..write(obj.gustKph);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ConditionAdapter extends TypeAdapter<Condition> {
  @override
  final int typeId = 3;

  @override
  Condition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Condition(
      text: fields[1] as String?,
      icon: fields[2] as String?,
      code: fields[3] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Condition obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.icon)
      ..writeByte(3)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConditionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LocationAdapter extends TypeAdapter<Location> {
  @override
  final int typeId = 4;

  @override
  Location read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Location(
      name: fields[1] as String?,
      region: fields[2] as String?,
      country: fields[3] as String?,
      lat: fields[4] as num?,
      lon: fields[5] as num?,
      tzId: fields[6] as String?,
      localtimeEpoch: fields[7] as num?,
      localtime: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Location obj) {
    writer
      ..writeByte(8)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.region)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.lat)
      ..writeByte(5)
      ..write(obj.lon)
      ..writeByte(6)
      ..write(obj.tzId)
      ..writeByte(7)
      ..write(obj.localtimeEpoch)
      ..writeByte(8)
      ..write(obj.localtime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
