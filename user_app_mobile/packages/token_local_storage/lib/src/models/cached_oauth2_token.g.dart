// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_oauth2_token.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CachedOAuth2TokenAdapter extends TypeAdapter<CachedOAuth2Token> {
  @override
  final int typeId = 0;

  @override
  CachedOAuth2Token read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CachedOAuth2Token(
      accessToken: fields[0] as String,
      tokenType: fields[1] == null ? 'bearer' : fields[1] as String?,
      expiresIn: (fields[2] as num?)?.toInt(),
      refreshToken: fields[3] as String?,
      scope: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CachedOAuth2Token obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.tokenType)
      ..writeByte(2)
      ..write(obj.expiresIn)
      ..writeByte(3)
      ..write(obj.refreshToken)
      ..writeByte(4)
      ..write(obj.scope);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedOAuth2TokenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
