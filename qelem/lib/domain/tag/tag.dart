import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/tag/tag_name.dart';

part 'tag.freezed.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    required int id,
    required TagName name,
  }) = _Tag;
}
