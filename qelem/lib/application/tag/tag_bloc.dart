import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/tag/tag_event.dart';
import 'package:qelem/application/tag/tag_state.dart';
import 'package:qelem/domain/tag/tag_repository_interface.dart';

class TagBloc extends Bloc<TagEvent, TagState> {
  final TagRepositoryInterface tagRepository;

  TagBloc({required this.tagRepository}) : super(const TagStateInitial()) {
    // Load the tags
    on<LoadTagsTagEvent>(
      (event, emit) async {
        emit(const TagState.loading());
        add(const ReloadTagsTagEvent());
      },
    );

    on<ReloadTagsTagEvent>((event, emit) async {
      final tags = await tagRepository.getTags();

      if (tags.hasError) {
        emit(TagStateError(tags.error!));
      } else {
        emit(TagState.loadedTags(tags.val!));
      }
    });

    on<AddTagEvent>((event, emit) async {
      emit(const TagState.loading());
      final tag = await tagRepository.createTag(event.tagName);

      if (tag.hasError) {
        emit(TagStateError(tag.error!));
      } else {
        emit(const TagStateSuccess("Tag added successfully"));
        add(const ReloadTagsTagEvent());
      }
    });

    on<UpdateTagEvent>((event, emit) async {
      final result = await tagRepository.updateTag(event.tag);

      if (result.hasError) {
        emit(TagStateError(result.error!));
      } else {
        emit(const TagStateSuccess("Tag updated successfully"));
        add(const ReloadTagsTagEvent());
      }
    });
  }
}
