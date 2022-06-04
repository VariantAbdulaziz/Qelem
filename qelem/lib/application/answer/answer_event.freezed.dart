// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) loadAnswers,
    required TResult Function(int questionId) reloadAnswers,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(Answer answer) updateAnswer,
    required TResult Function(Answer answer) delete,
    required TResult Function(Answer answer, Vote vote) vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswersAnswerEvent value) loadAnswers,
    required TResult Function(ReloadAnswersAnswerEvent value) reloadAnswers,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) delete,
    required TResult Function(VoteAnswerEvent value) vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerEventCopyWith<$Res> {
  factory $AnswerEventCopyWith(
          AnswerEvent value, $Res Function(AnswerEvent) then) =
      _$AnswerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnswerEventCopyWithImpl<$Res> implements $AnswerEventCopyWith<$Res> {
  _$AnswerEventCopyWithImpl(this._value, this._then);

  final AnswerEvent _value;
  // ignore: unused_field
  final $Res Function(AnswerEvent) _then;
}

/// @nodoc
abstract class _$$LoadAnswersAnswerEventCopyWith<$Res> {
  factory _$$LoadAnswersAnswerEventCopyWith(_$LoadAnswersAnswerEvent value,
          $Res Function(_$LoadAnswersAnswerEvent) then) =
      __$$LoadAnswersAnswerEventCopyWithImpl<$Res>;
  $Res call({int questionId});
}

/// @nodoc
class __$$LoadAnswersAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res>
    implements _$$LoadAnswersAnswerEventCopyWith<$Res> {
  __$$LoadAnswersAnswerEventCopyWithImpl(_$LoadAnswersAnswerEvent _value,
      $Res Function(_$LoadAnswersAnswerEvent) _then)
      : super(_value, (v) => _then(v as _$LoadAnswersAnswerEvent));

  @override
  _$LoadAnswersAnswerEvent get _value =>
      super._value as _$LoadAnswersAnswerEvent;

  @override
  $Res call({
    Object? questionId = freezed,
  }) {
    return _then(_$LoadAnswersAnswerEvent(
      questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadAnswersAnswerEvent implements LoadAnswersAnswerEvent {
  const _$LoadAnswersAnswerEvent(this.questionId);

  @override
  final int questionId;

  @override
  String toString() {
    return 'AnswerEvent.loadAnswers(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAnswersAnswerEvent &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$LoadAnswersAnswerEventCopyWith<_$LoadAnswersAnswerEvent> get copyWith =>
      __$$LoadAnswersAnswerEventCopyWithImpl<_$LoadAnswersAnswerEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) loadAnswers,
    required TResult Function(int questionId) reloadAnswers,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(Answer answer) updateAnswer,
    required TResult Function(Answer answer) delete,
    required TResult Function(Answer answer, Vote vote) vote,
  }) {
    return loadAnswers(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
  }) {
    return loadAnswers?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (loadAnswers != null) {
      return loadAnswers(questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswersAnswerEvent value) loadAnswers,
    required TResult Function(ReloadAnswersAnswerEvent value) reloadAnswers,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) delete,
    required TResult Function(VoteAnswerEvent value) vote,
  }) {
    return loadAnswers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
  }) {
    return loadAnswers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
    required TResult orElse(),
  }) {
    if (loadAnswers != null) {
      return loadAnswers(this);
    }
    return orElse();
  }
}

abstract class LoadAnswersAnswerEvent implements AnswerEvent {
  const factory LoadAnswersAnswerEvent(final int questionId) =
      _$LoadAnswersAnswerEvent;

  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadAnswersAnswerEventCopyWith<_$LoadAnswersAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadAnswersAnswerEventCopyWith<$Res> {
  factory _$$ReloadAnswersAnswerEventCopyWith(_$ReloadAnswersAnswerEvent value,
          $Res Function(_$ReloadAnswersAnswerEvent) then) =
      __$$ReloadAnswersAnswerEventCopyWithImpl<$Res>;
  $Res call({int questionId});
}

/// @nodoc
class __$$ReloadAnswersAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res>
    implements _$$ReloadAnswersAnswerEventCopyWith<$Res> {
  __$$ReloadAnswersAnswerEventCopyWithImpl(_$ReloadAnswersAnswerEvent _value,
      $Res Function(_$ReloadAnswersAnswerEvent) _then)
      : super(_value, (v) => _then(v as _$ReloadAnswersAnswerEvent));

  @override
  _$ReloadAnswersAnswerEvent get _value =>
      super._value as _$ReloadAnswersAnswerEvent;

  @override
  $Res call({
    Object? questionId = freezed,
  }) {
    return _then(_$ReloadAnswersAnswerEvent(
      questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReloadAnswersAnswerEvent implements ReloadAnswersAnswerEvent {
  const _$ReloadAnswersAnswerEvent(this.questionId);

  @override
  final int questionId;

  @override
  String toString() {
    return 'AnswerEvent.reloadAnswers(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReloadAnswersAnswerEvent &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$ReloadAnswersAnswerEventCopyWith<_$ReloadAnswersAnswerEvent>
      get copyWith =>
          __$$ReloadAnswersAnswerEventCopyWithImpl<_$ReloadAnswersAnswerEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) loadAnswers,
    required TResult Function(int questionId) reloadAnswers,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(Answer answer) updateAnswer,
    required TResult Function(Answer answer) delete,
    required TResult Function(Answer answer, Vote vote) vote,
  }) {
    return reloadAnswers(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
  }) {
    return reloadAnswers?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (reloadAnswers != null) {
      return reloadAnswers(questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswersAnswerEvent value) loadAnswers,
    required TResult Function(ReloadAnswersAnswerEvent value) reloadAnswers,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) delete,
    required TResult Function(VoteAnswerEvent value) vote,
  }) {
    return reloadAnswers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
  }) {
    return reloadAnswers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
    required TResult orElse(),
  }) {
    if (reloadAnswers != null) {
      return reloadAnswers(this);
    }
    return orElse();
  }
}

abstract class ReloadAnswersAnswerEvent implements AnswerEvent {
  const factory ReloadAnswersAnswerEvent(final int questionId) =
      _$ReloadAnswersAnswerEvent;

  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ReloadAnswersAnswerEventCopyWith<_$ReloadAnswersAnswerEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAnswerEventCopyWith<$Res> {
  factory _$$AddAnswerEventCopyWith(
          _$AddAnswerEvent value, $Res Function(_$AddAnswerEvent) then) =
      __$$AddAnswerEventCopyWithImpl<$Res>;
  $Res call({AnswerForm answerForm});

  $AnswerFormCopyWith<$Res> get answerForm;
}

/// @nodoc
class __$$AddAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res>
    implements _$$AddAnswerEventCopyWith<$Res> {
  __$$AddAnswerEventCopyWithImpl(
      _$AddAnswerEvent _value, $Res Function(_$AddAnswerEvent) _then)
      : super(_value, (v) => _then(v as _$AddAnswerEvent));

  @override
  _$AddAnswerEvent get _value => super._value as _$AddAnswerEvent;

  @override
  $Res call({
    Object? answerForm = freezed,
  }) {
    return _then(_$AddAnswerEvent(
      answerForm == freezed
          ? _value.answerForm
          : answerForm // ignore: cast_nullable_to_non_nullable
              as AnswerForm,
    ));
  }

  @override
  $AnswerFormCopyWith<$Res> get answerForm {
    return $AnswerFormCopyWith<$Res>(_value.answerForm, (value) {
      return _then(_value.copyWith(answerForm: value));
    });
  }
}

/// @nodoc

class _$AddAnswerEvent implements AddAnswerEvent {
  const _$AddAnswerEvent(this.answerForm);

  @override
  final AnswerForm answerForm;

  @override
  String toString() {
    return 'AnswerEvent.addAnswer(answerForm: $answerForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAnswerEvent &&
            const DeepCollectionEquality()
                .equals(other.answerForm, answerForm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(answerForm));

  @JsonKey(ignore: true)
  @override
  _$$AddAnswerEventCopyWith<_$AddAnswerEvent> get copyWith =>
      __$$AddAnswerEventCopyWithImpl<_$AddAnswerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) loadAnswers,
    required TResult Function(int questionId) reloadAnswers,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(Answer answer) updateAnswer,
    required TResult Function(Answer answer) delete,
    required TResult Function(Answer answer, Vote vote) vote,
  }) {
    return addAnswer(answerForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
  }) {
    return addAnswer?.call(answerForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (addAnswer != null) {
      return addAnswer(answerForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswersAnswerEvent value) loadAnswers,
    required TResult Function(ReloadAnswersAnswerEvent value) reloadAnswers,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) delete,
    required TResult Function(VoteAnswerEvent value) vote,
  }) {
    return addAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
  }) {
    return addAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
    required TResult orElse(),
  }) {
    if (addAnswer != null) {
      return addAnswer(this);
    }
    return orElse();
  }
}

abstract class AddAnswerEvent implements AnswerEvent {
  const factory AddAnswerEvent(final AnswerForm answerForm) = _$AddAnswerEvent;

  AnswerForm get answerForm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddAnswerEventCopyWith<_$AddAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAnswerEventCopyWith<$Res> {
  factory _$$UpdateAnswerEventCopyWith(
          _$UpdateAnswerEvent value, $Res Function(_$UpdateAnswerEvent) then) =
      __$$UpdateAnswerEventCopyWithImpl<$Res>;
  $Res call({Answer answer});

  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$$UpdateAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res>
    implements _$$UpdateAnswerEventCopyWith<$Res> {
  __$$UpdateAnswerEventCopyWithImpl(
      _$UpdateAnswerEvent _value, $Res Function(_$UpdateAnswerEvent) _then)
      : super(_value, (v) => _then(v as _$UpdateAnswerEvent));

  @override
  _$UpdateAnswerEvent get _value => super._value as _$UpdateAnswerEvent;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_$UpdateAnswerEvent(
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }

  @override
  $AnswerCopyWith<$Res> get answer {
    return $AnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc

class _$UpdateAnswerEvent implements UpdateAnswerEvent {
  const _$UpdateAnswerEvent(this.answer);

  @override
  final Answer answer;

  @override
  String toString() {
    return 'AnswerEvent.updateAnswer(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAnswerEvent &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$$UpdateAnswerEventCopyWith<_$UpdateAnswerEvent> get copyWith =>
      __$$UpdateAnswerEventCopyWithImpl<_$UpdateAnswerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) loadAnswers,
    required TResult Function(int questionId) reloadAnswers,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(Answer answer) updateAnswer,
    required TResult Function(Answer answer) delete,
    required TResult Function(Answer answer, Vote vote) vote,
  }) {
    return updateAnswer(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
  }) {
    return updateAnswer?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (updateAnswer != null) {
      return updateAnswer(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswersAnswerEvent value) loadAnswers,
    required TResult Function(ReloadAnswersAnswerEvent value) reloadAnswers,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) delete,
    required TResult Function(VoteAnswerEvent value) vote,
  }) {
    return updateAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
  }) {
    return updateAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
    required TResult orElse(),
  }) {
    if (updateAnswer != null) {
      return updateAnswer(this);
    }
    return orElse();
  }
}

abstract class UpdateAnswerEvent implements AnswerEvent {
  const factory UpdateAnswerEvent(final Answer answer) = _$UpdateAnswerEvent;

  Answer get answer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateAnswerEventCopyWith<_$UpdateAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAnswerEventCopyWith<$Res> {
  factory _$$DeleteAnswerEventCopyWith(
          _$DeleteAnswerEvent value, $Res Function(_$DeleteAnswerEvent) then) =
      __$$DeleteAnswerEventCopyWithImpl<$Res>;
  $Res call({Answer answer});

  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$$DeleteAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res>
    implements _$$DeleteAnswerEventCopyWith<$Res> {
  __$$DeleteAnswerEventCopyWithImpl(
      _$DeleteAnswerEvent _value, $Res Function(_$DeleteAnswerEvent) _then)
      : super(_value, (v) => _then(v as _$DeleteAnswerEvent));

  @override
  _$DeleteAnswerEvent get _value => super._value as _$DeleteAnswerEvent;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_$DeleteAnswerEvent(
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }

  @override
  $AnswerCopyWith<$Res> get answer {
    return $AnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc

class _$DeleteAnswerEvent implements DeleteAnswerEvent {
  const _$DeleteAnswerEvent(this.answer);

  @override
  final Answer answer;

  @override
  String toString() {
    return 'AnswerEvent.delete(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAnswerEvent &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$$DeleteAnswerEventCopyWith<_$DeleteAnswerEvent> get copyWith =>
      __$$DeleteAnswerEventCopyWithImpl<_$DeleteAnswerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) loadAnswers,
    required TResult Function(int questionId) reloadAnswers,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(Answer answer) updateAnswer,
    required TResult Function(Answer answer) delete,
    required TResult Function(Answer answer, Vote vote) vote,
  }) {
    return delete(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
  }) {
    return delete?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswersAnswerEvent value) loadAnswers,
    required TResult Function(ReloadAnswersAnswerEvent value) reloadAnswers,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) delete,
    required TResult Function(VoteAnswerEvent value) vote,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteAnswerEvent implements AnswerEvent {
  const factory DeleteAnswerEvent(final Answer answer) = _$DeleteAnswerEvent;

  Answer get answer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteAnswerEventCopyWith<_$DeleteAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteAnswerEventCopyWith<$Res> {
  factory _$$VoteAnswerEventCopyWith(
          _$VoteAnswerEvent value, $Res Function(_$VoteAnswerEvent) then) =
      __$$VoteAnswerEventCopyWithImpl<$Res>;
  $Res call({Answer answer, Vote vote});

  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$$VoteAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res>
    implements _$$VoteAnswerEventCopyWith<$Res> {
  __$$VoteAnswerEventCopyWithImpl(
      _$VoteAnswerEvent _value, $Res Function(_$VoteAnswerEvent) _then)
      : super(_value, (v) => _then(v as _$VoteAnswerEvent));

  @override
  _$VoteAnswerEvent get _value => super._value as _$VoteAnswerEvent;

  @override
  $Res call({
    Object? answer = freezed,
    Object? vote = freezed,
  }) {
    return _then(_$VoteAnswerEvent(
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
      vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as Vote,
    ));
  }

  @override
  $AnswerCopyWith<$Res> get answer {
    return $AnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc

class _$VoteAnswerEvent implements VoteAnswerEvent {
  const _$VoteAnswerEvent(this.answer, this.vote);

  @override
  final Answer answer;
  @override
  final Vote vote;

  @override
  String toString() {
    return 'AnswerEvent.vote(answer: $answer, vote: $vote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteAnswerEvent &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            const DeepCollectionEquality().equals(other.vote, vote));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(vote));

  @JsonKey(ignore: true)
  @override
  _$$VoteAnswerEventCopyWith<_$VoteAnswerEvent> get copyWith =>
      __$$VoteAnswerEventCopyWithImpl<_$VoteAnswerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) loadAnswers,
    required TResult Function(int questionId) reloadAnswers,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(Answer answer) updateAnswer,
    required TResult Function(Answer answer) delete,
    required TResult Function(Answer answer, Vote vote) vote,
  }) {
    return vote(answer, this.vote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
  }) {
    return vote?.call(answer, this.vote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? loadAnswers,
    TResult Function(int questionId)? reloadAnswers,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(Answer answer)? updateAnswer,
    TResult Function(Answer answer)? delete,
    TResult Function(Answer answer, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote(answer, this.vote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswersAnswerEvent value) loadAnswers,
    required TResult Function(ReloadAnswersAnswerEvent value) reloadAnswers,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) delete,
    required TResult Function(VoteAnswerEvent value) vote,
  }) {
    return vote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
  }) {
    return vote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswersAnswerEvent value)? loadAnswers,
    TResult Function(ReloadAnswersAnswerEvent value)? reloadAnswers,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? delete,
    TResult Function(VoteAnswerEvent value)? vote,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote(this);
    }
    return orElse();
  }
}

abstract class VoteAnswerEvent implements AnswerEvent {
  const factory VoteAnswerEvent(final Answer answer, final Vote vote) =
      _$VoteAnswerEvent;

  Answer get answer => throw _privateConstructorUsedError;
  Vote get vote => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VoteAnswerEventCopyWith<_$VoteAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
