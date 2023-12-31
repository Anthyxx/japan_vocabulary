// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WordAdapter extends TypeAdapter<Word> {
  @override
  final int typeId = 0;

  @override
  Word read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Word(
      wordFrench: fields[0] as String,
      wordJapanese: fields[1] as String,
      traductionValidated: fields[2] as bool,
      wordKnown: fields[3] as bool,
      details: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Word obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.wordFrench)
      ..writeByte(1)
      ..write(obj.wordJapanese)
      ..writeByte(2)
      ..write(obj.traductionValidated)
      ..writeByte(3)
      ..write(obj.wordKnown)
      ..writeByte(4)
      ..write(obj.details);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
