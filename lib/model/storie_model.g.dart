// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storie_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoryModelAdapter extends TypeAdapter<StoryModel> {
  @override
  final int typeId = 2;

  @override
  StoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoryModel(
      storyUrl: fields[0] as String,
      words: fields[1] as String,
      audioFile: fields[2] as String,
      videoplayer: fields[3] as String,
      list: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StoryModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.storyUrl)
      ..writeByte(1)
      ..write(obj.words)
      ..writeByte(2)
      ..write(obj.audioFile)
      ..writeByte(4)
      ..write(obj.list)
      ..writeByte(3)
      ..write(obj.videoplayer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
