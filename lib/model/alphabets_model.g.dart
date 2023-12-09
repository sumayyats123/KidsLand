// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alphabets_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WordsForKidsAdapter extends TypeAdapter<WordsForKids> {
  @override
  final int typeId = 1;

  @override
  WordsForKids read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WordsForKids(
      alphabets: fields[0] as String,
      words: fields[1] as String,
      imageUrl: fields[2] as String,
      audioFile: fields[3] as String,
      list: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WordsForKids obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.alphabets)
      ..writeByte(1)
      ..write(obj.words)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj.audioFile)
      ..writeByte(4)
      ..write(obj.list);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordsForKidsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
