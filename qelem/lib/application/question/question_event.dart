part of 'question_bloc.dart';

@immutable
abstract class QuestionEvent {}

class QuestionEventFetch extends QuestionEvent {
  // final int page;

  QuestionEventFetch(); // todo: what should be the page size?
}
