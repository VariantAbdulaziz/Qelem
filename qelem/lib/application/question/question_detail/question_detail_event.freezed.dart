// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) reload,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question, Vote vote) vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailLoadEvent value) load,
    required TResult Function(QuestionDetailReloadEvent value) reload,
    required TResult Function(QuestionDetailDeleteEvent value) delete,
    required TResult Function(VoteQuestionEvent value) vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDetailEventCopyWith<$Res> {
  factory $QuestionDetailEventCopyWith(
          QuestionDetailEvent value, $Res Function(QuestionDetailEvent) then) =
      _$QuestionDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionDetailEventCopyWithImpl<$Res>
    implements $QuestionDetailEventCopyWith<$Res> {
  _$QuestionDetailEventCopyWithImpl(this._value, this._then);

  final QuestionDetailEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionDetailEvent) _then;
}

/// @nodoc
abstract class _$$QuestionDetailLoadEventCopyWith<$Res> {
  factory _$$QuestionDetailLoadEventCopyWith(_$QuestionDetailLoadEvent value,
          $Res Function(_$QuestionDetailLoadEvent) then) =
      __$$QuestionDetailLoadEventCopyWithImpl<$Res>;
  $Res call({int questionId});
}

/// @nodoc
class __$$QuestionDetailLoadEventCopyWithImpl<$Res>
    extends _$QuestionDetailEventCopyWithImpl<$Res>
    implements _$$QuestionDetailLoadEventCopyWith<$Res> {
  __$$QuestionDetailLoadEventCopyWithImpl(_$QuestionDetailLoadEvent _value,
      $Res Function(_$QuestionDetailLoadEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionDetailLoadEvent));

  @override
  _$QuestionDetailLoadEvent get _value =>
      super._value as _$QuestionDetailLoadEvent;

  @override
  $Res call({
    Object? questionId = freezed,
  }) {
    return _then(_$QuestionDetailLoadEvent(
      questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionDetailLoadEvent implements QuestionDetailLoadEvent {
  const _$QuestionDetailLoadEvent(this.questionId);

  @override
  final int questionId;

  @override
  String toString() {
    return 'QuestionDetailEvent.load(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailLoadEvent &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$QuestionDetailLoadEventCopyWith<_$QuestionDetailLoadEvent> get copyWith =>
      __$$QuestionDetailLoadEventCopyWithImpl<_$QuestionDetailLoadEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) reload,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question, Vote vote) vote,
  }) {
    return load(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
  }) {
    return load?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailLoadEvent value) load,
    required TResult Function(QuestionDetailReloadEvent value) reload,
    required TResult Function(QuestionDetailDeleteEvent value) delete,
    required TResult Function(VoteQuestionEvent value) vote,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class QuestionDetailLoadEvent implements QuestionDetailEvent {
  const factory QuestionDetailLoadEvent(final int questionId) =
      _$QuestionDetailLoadEvent;

  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionDetailLoadEventCopyWith<_$QuestionDetailLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionDetailReloadEventCopyWith<$Res> {
  factory _$$QuestionDetailReloadEventCopyWith(
          _$QuestionDetailReloadEvent value,
          $Res Function(_$QuestionDetailReloadEvent) then) =
      __$$QuestionDetailReloadEventCopyWithImpl<$Res>;
  $Res call({int questionId});
}

/// @nodoc
class __$$QuestionDetailReloadEventCopyWithImpl<$Res>
    extends _$QuestionDetailEventCopyWithImpl<$Res>
    implements _$$QuestionDetailReloadEventCopyWith<$Res> {
  __$$QuestionDetailReloadEventCopyWithImpl(_$QuestionDetailReloadEvent _value,
      $Res Function(_$QuestionDetailReloadEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionDetailReloadEvent));

  @override
  _$QuestionDetailReloadEvent get _value =>
      super._value as _$QuestionDetailReloadEvent;

  @override
  $Res call({
    Object? questionId = freezed,
  }) {
    return _then(_$QuestionDetailReloadEvent(
      questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionDetailReloadEvent implements QuestionDetailReloadEvent {
  const _$QuestionDetailReloadEvent(this.questionId);

  @override
  final int questionId;

  @override
  String toString() {
    return 'QuestionDetailEvent.reload(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailReloadEvent &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$QuestionDetailReloadEventCopyWith<_$QuestionDetailReloadEvent>
      get copyWith => __$$QuestionDetailReloadEventCopyWithImpl<
          _$QuestionDetailReloadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) reload,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question, Vote vote) vote,
  }) {
    return reload(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
  }) {
    return reload?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailLoadEvent value) load,
    required TResult Function(QuestionDetailReloadEvent value) reload,
    required TResult Function(QuestionDetailDeleteEvent value) delete,
    required TResult Function(VoteQuestionEvent value) vote,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class QuestionDetailReloadEvent implements QuestionDetailEvent {
  const factory QuestionDetailReloadEvent(final int questionId) =
      _$QuestionDetailReloadEvent;

  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionDetailReloadEventCopyWith<_$QuestionDetailReloadEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionDetailDeleteEventCopyWith<$Res> {
  factory _$$QuestionDetailDeleteEventCopyWith(
          _$QuestionDetailDeleteEvent value,
          $Res Function(_$QuestionDetailDeleteEvent) then) =
      __$$QuestionDetailDeleteEventCopyWithImpl<$Res>;
  $Res call({int questionId});
}

/// @nodoc
class __$$QuestionDetailDeleteEventCopyWithImpl<$Res>
    extends _$QuestionDetailEventCopyWithImpl<$Res>
    implements _$$QuestionDetailDeleteEventCopyWith<$Res> {
  __$$QuestionDetailDeleteEventCopyWithImpl(_$QuestionDetailDeleteEvent _value,
      $Res Function(_$QuestionDetailDeleteEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionDetailDeleteEvent));

  @override
  _$QuestionDetailDeleteEvent get _value =>
      super._value as _$QuestionDetailDeleteEvent;

  @override
  $Res call({
    Object? questionId = freezed,
  }) {
    return _then(_$QuestionDetailDeleteEvent(
      questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionDetailDeleteEvent implements QuestionDetailDeleteEvent {
  const _$QuestionDetailDeleteEvent(this.questionId);

  @override
  final int questionId;

  @override
  String toString() {
    return 'QuestionDetailEvent.delete(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailDeleteEvent &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$QuestionDetailDeleteEventCopyWith<_$QuestionDetailDeleteEvent>
      get copyWith => __$$QuestionDetailDeleteEventCopyWithImpl<
          _$QuestionDetailDeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) reload,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question, Vote vote) vote,
  }) {
    return delete(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
  }) {
    return delete?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailLoadEvent value) load,
    required TResult Function(QuestionDetailReloadEvent value) reload,
    required TResult Function(QuestionDetailDeleteEvent value) delete,
    required TResult Function(VoteQuestionEvent value) vote,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class QuestionDetailDeleteEvent implements QuestionDetailEvent {
  const factory QuestionDetailDeleteEvent(final int questionId) =
      _$QuestionDetailDeleteEvent;

  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionDetailDeleteEventCopyWith<_$QuestionDetailDeleteEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteQuestionEventCopyWith<$Res> {
  factory _$$VoteQuestionEventCopyWith(
          _$VoteQuestionEvent value, $Res Function(_$VoteQuestionEvent) then) =
      __$$VoteQuestionEventCopyWithImpl<$Res>;
  $Res call({Question question, Vote vote});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$VoteQuestionEventCopyWithImpl<$Res>
    extends _$QuestionDetailEventCopyWithImpl<$Res>
    implements _$$VoteQuestionEventCopyWith<$Res> {
  __$$VoteQuestionEventCopyWithImpl(
      _$VoteQuestionEvent _value, $Res Function(_$VoteQuestionEvent) _then)
      : super(_value, (v) => _then(v as _$VoteQuestionEvent));

  @override
  _$VoteQuestionEvent get _value => super._value as _$VoteQuestionEvent;

  @override
  $Res call({
    Object? question = freezed,
    Object? vote = freezed,
  }) {
    return _then(_$VoteQuestionEvent(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
      vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as Vote,
    ));
  }

  @override
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$VoteQuestionEvent implements VoteQuestionEvent {
  const _$VoteQuestionEvent(this.question, this.vote);

  @override
  final Question question;
  @override
  final Vote vote;

  @override
  String toString() {
    return 'QuestionDetailEvent.vote(question: $question, vote: $vote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteQuestionEvent &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.vote, vote));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(vote));

  @JsonKey(ignore: true)
  @override
  _$$VoteQuestionEventCopyWith<_$VoteQuestionEvent> get copyWith =>
      __$$VoteQuestionEventCopyWithImpl<_$VoteQuestionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) reload,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question, Vote vote) vote,
  }) {
    return vote(question, this.vote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
  }) {
    return vote?.call(question, this.vote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? reload,
    TResult Function(int questionId)? delete,
    TResult Function(Question question, Vote vote)? vote,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote(question, this.vote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailLoadEvent value) load,
    required TResult Function(QuestionDetailReloadEvent value) reload,
    required TResult Function(QuestionDetailDeleteEvent value) delete,
    required TResult Function(VoteQuestionEvent value) vote,
  }) {
    return vote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
  }) {
    return vote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    TResult Function(VoteQuestionEvent value)? vote,
    required TResult orElse(),
  }) {
    if (vote != null) {
      return vote(this);
    }
    return orElse();
  }
}

abstract class VoteQuestionEvent implements QuestionDetailEvent {
  const factory VoteQuestionEvent(final Question question, final Vote vote) =
      _$VoteQuestionEvent;

  Question get question => throw _privateConstructorUsedError;
  Vote get vote => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VoteQuestionEventCopyWith<_$VoteQuestionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
