import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required int total,
    required int page,
    required int limit,
  }) = _Meta;
}
