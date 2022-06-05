import 'package:qelem/domain/tag/tag.dart';
import 'package:qelem/domain/tag/tag_name.dart';
import 'package:qelem/infrastructure/tag/tag_dto.dart';

import 'local/TagEntity.dart';

extension TagMapper on TagDto {
  Tag toTag() {
    return Tag(
      id: id,
      name: TagName(value: name),
    );
  }

  TagEntity toTagEntity(int questionId) {
    return TagEntity(
      tagId: id,
      name: name,
      questionId: questionId,
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

extension TagEntityMapper on TagEntity {
  TagDto toTagDto() {
    return TagDto(id: tagId, name: name);
}
}