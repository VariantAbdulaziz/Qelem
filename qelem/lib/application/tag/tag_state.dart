import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/tag/tag.dart';
import 'package:qelem/util/error.dart';

part 'tag_state.freezed.dart';

@freezed
class TagState with _$TagState {
  const factory TagState.initial() = TagStateInitial;
  const factory TagState.loading() = TagStateLoading;
  const factory TagState.loadedTags(List<Tag> tags) = TagStateLoadedTags;

  const factory TagState.error(Error error) = TagStateError;
  const factory TagState.success(String message) = TagStateSuccess;
}
