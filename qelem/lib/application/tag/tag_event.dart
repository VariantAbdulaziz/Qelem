import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/tag/tag.dart';
import 'package:qelem/domain/tag/tag_name.dart';

part 'tag_event.freezed.dart';

@freezed
class TagEvent with _$TagEvent {
  const factory TagEvent.loadTags() = LoadTagsTagEvent;
  const factory TagEvent.addTag(TagName tagName) = AddTagEvent;
  const factory TagEvent.updateTag(Tag tag) = UpdateTagEvent;
  const factory TagEvent.reloadTags() = ReloadTagsTagEvent;
}
