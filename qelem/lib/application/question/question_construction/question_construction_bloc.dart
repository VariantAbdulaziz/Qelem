import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/domain/tag/tag.dart';
import 'package:qelem/infrastructure/tag/tag_repository.dart';

import '../../../infrastructure/question/question_repository.dart';

import 'question_construction_event.dart';
import 'question_construction_state.dart';

class QuestionContructionBloc
    extends Bloc<QuestionConstructionEvent, QuestionConstructionState> {
  final QuestionRepository questionRepository;
  final TagRepository tagRepository;

  List<Tag> _selectedTags = List.empty();
  List<Tag> _tags = List.empty();

  QuestionContructionBloc(
      {required this.questionRepository, required this.tagRepository})
      : super(const QuestionPostStateEmpty()) {
    on<QuestionConstructionLoadTagsEvent>(
      (event, emit) async {
        emit(const QuestionConstructionState.loadingTags());
        final tags = await tagRepository.getTags();

        if (tags.hasError) {
          emit(QuestionConstructionState.error(tags.error!));
        } else {
          _tags = tags.val!;
          emit(QuestionConstructionState.loadedTags(_selectedTags, _tags));
        }
      },
    );

    on<QuestionEventPost>(
      ((event, emit) async {
        emit(const QuestionPostStateLoading());
        var result = await questionRepository
            .createQuestion(event.form.copyWith(tags: _selectedTags));
        if (result.hasError) {
          emit(QuestionPostStateError(result.error!));
        } else {
          emit(QuestionPostStateSuccess(result.val!));
        }
      }),
    );

    on<QuestionEventToggleTag>(
      ((event, emit) {
        if (_selectedTags.contains(event.tag)) {
          _selectedTags =
              _selectedTags.where((tag) => tag != event.tag).toList();
          _tags = List.from(_tags)..add(event.tag);
        } else {
          _selectedTags = List.from(_selectedTags)..add(event.tag);
          _tags = _tags.where((tag) => tag != event.tag).toList();
        }
        emit(QuestionPostStateLoadedTags(_selectedTags, _tags));
      }),
    );

    // on<QuestionConstructionUpdateEvent>(
    //   ((event, emit) async {
    //     emit(const QuestionConstructionState.loading());
    //     final question =
    //         await _questionRepository.getQuestionById(event.questionId);

    //     if (question.hasError) {
    //       emit(QuestionConstructionState.error(question.error!));
    //     } else {
    //       emit(QuestionConstructionState.update(question.val!));
    //     }
    //   }),
    // );
  }
}
