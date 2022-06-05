import 'package:freezed_annotation/freezed_annotation.dart';

part 'TagEntity.freezed.dart';
part 'TagEntity.g.dart';

@freezed
class TagEntity with _$TagEntity {
  const factory TagEntity({
    required int tagId,
    required String name,
    required int questionId,
  }) = _TagEntity;

  factory TagEntity.fromJson(Map<String, dynamic> json) => _$TagEntityFromJson(json);
}