part of 'question_bloc.dart';

enum QuestionStateStatus {
  initial,
  loaded,
  error,
}

// @immutable
// abstract class QuestionState {
//   // final QuestionStateStatus status;
//   // final List<Question> questions;
//   // // final Error error;
//   // final bool reachedEnd;
//   //
//   // QuestionState({
//   //   this.status = QuestionStateStatus.initial,
//   //   this.questions = const [],
//   //   this.reachedEnd = false,
//     // this.error,
//   });
// }

class QuestionState {
  final QuestionStateStatus status;
  final List<Question> questions;
  // final Error error;
  final bool reachedEnd;

  QuestionState({
    this.status = QuestionStateStatus.initial,
    this.questions = const [],
    // this.error,
    this.reachedEnd = false,
  });

  QuestionState copyWith({
    QuestionStateStatus? status,
    List<Question>? questions,
    // Error error,
    bool? reachedEnd,
  }) {
    return QuestionState(
      status: status ?? this.status,
      questions: questions ?? this.questions,
      // error: error ?? this.error,
      reachedEnd: reachedEnd ?? this.reachedEnd,
    );
  }
}
