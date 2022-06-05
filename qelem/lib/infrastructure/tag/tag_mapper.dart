import 'package:qelem/domain/tag/tag.dart';
import 'package:qelem/domain/tag/tag_name.dart';
import 'package:qelem/infrastructure/tag/tag_dto.dart';

extension TagMapper on TagDto {
  Tag toTag() {
    return Tag(
      id: id,
      name: TagName(value: name),
    );
  }
}

extension TagDtoMapper on Tag {
  TagDto toTagDto() {
    return TagDto(
      id: id,
      name: name.value,
    );
  }
}
