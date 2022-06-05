import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_dto.freezed.dart';
part 'tag_dto.g.dart';

@freezed
class TagDto with _$TagDto {
  const factory TagDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _TagDto;

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);
}
