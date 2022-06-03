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
mixin _$QuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question) upVote,
    required TResult Function(Question question) downVote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLoadEvent value) load,
    required TResult Function(QuestionDeleteEvent value) delete,
    required TResult Function(QuestionUpVoteEvent value) upVote,
    required TResult Function(QuestionDownVoteEvent value) downVote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEventCopyWith<$Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent value, $Res Function(QuestionEvent) then) =
      _$QuestionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionEventCopyWithImpl<$Res>
    implements $QuestionEventCopyWith<$Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  final QuestionEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionEvent) _then;
}

/// @nodoc
abstract class _$$QuestionLoadEventCopyWith<$Res> {
  factory _$$QuestionLoadEventCopyWith(
          _$QuestionLoadEvent value, $Res Function(_$QuestionLoadEvent) then) =
      __$$QuestionLoadEventCopyWithImpl<$Res>;
  $Res call({int questionId});
}

/// @nodoc
class __$$QuestionLoadEventCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res>
    implements _$$QuestionLoadEventCopyWith<$Res> {
  __$$QuestionLoadEventCopyWithImpl(
      _$QuestionLoadEvent _value, $Res Function(_$QuestionLoadEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionLoadEvent));

  @override
  _$QuestionLoadEvent get _value => super._value as _$QuestionLoadEvent;

  @override
  $Res call({
    Object? questionId = freezed,
  }) {
    return _then(_$QuestionLoadEvent(
      questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionLoadEvent implements QuestionLoadEvent {
  const _$QuestionLoadEvent(this.questionId);

  @override
  final int questionId;

  @override
  String toString() {
    return 'QuestionEvent.load(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionLoadEvent &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$QuestionLoadEventCopyWith<_$QuestionLoadEvent> get copyWith =>
      __$$QuestionLoadEventCopyWithImpl<_$QuestionLoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question) upVote,
    required TResult Function(Question question) downVote,
  }) {
    return load(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
  }) {
    return load?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
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
    required TResult Function(QuestionLoadEvent value) load,
    required TResult Function(QuestionDeleteEvent value) delete,
    required TResult Function(QuestionUpVoteEvent value) upVote,
    required TResult Function(QuestionDownVoteEvent value) downVote,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class QuestionLoadEvent implements QuestionEvent {
  const factory QuestionLoadEvent(final int questionId) = _$QuestionLoadEvent;

  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionLoadEventCopyWith<_$QuestionLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionDeleteEventCopyWith<$Res> {
  factory _$$QuestionDeleteEventCopyWith(_$QuestionDeleteEvent value,
          $Res Function(_$QuestionDeleteEvent) then) =
      __$$QuestionDeleteEventCopyWithImpl<$Res>;
  $Res call({int questionId});
}

/// @nodoc
class __$$QuestionDeleteEventCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res>
    implements _$$QuestionDeleteEventCopyWith<$Res> {
  __$$QuestionDeleteEventCopyWithImpl(
      _$QuestionDeleteEvent _value, $Res Function(_$QuestionDeleteEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionDeleteEvent));

  @override
  _$QuestionDeleteEvent get _value => super._value as _$QuestionDeleteEvent;

  @override
  $Res call({
    Object? questionId = freezed,
  }) {
    return _then(_$QuestionDeleteEvent(
      questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionDeleteEvent implements QuestionDeleteEvent {
  const _$QuestionDeleteEvent(this.questionId);

  @override
  final int questionId;

  @override
  String toString() {
    return 'QuestionEvent.delete(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDeleteEvent &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$QuestionDeleteEventCopyWith<_$QuestionDeleteEvent> get copyWith =>
      __$$QuestionDeleteEventCopyWithImpl<_$QuestionDeleteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question) upVote,
    required TResult Function(Question question) downVote,
  }) {
    return delete(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
  }) {
    return delete?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
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
    required TResult Function(QuestionLoadEvent value) load,
    required TResult Function(QuestionDeleteEvent value) delete,
    required TResult Function(QuestionUpVoteEvent value) upVote,
    required TResult Function(QuestionDownVoteEvent value) downVote,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class QuestionDeleteEvent implements QuestionEvent {
  const factory QuestionDeleteEvent(final int questionId) =
      _$QuestionDeleteEvent;

  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionDeleteEventCopyWith<_$QuestionDeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionUpVoteEventCopyWith<$Res> {
  factory _$$QuestionUpVoteEventCopyWith(_$QuestionUpVoteEvent value,
          $Res Function(_$QuestionUpVoteEvent) then) =
      __$$QuestionUpVoteEventCopyWithImpl<$Res>;
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionUpVoteEventCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res>
    implements _$$QuestionUpVoteEventCopyWith<$Res> {
  __$$QuestionUpVoteEventCopyWithImpl(
      _$QuestionUpVoteEvent _value, $Res Function(_$QuestionUpVoteEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionUpVoteEvent));

  @override
  _$QuestionUpVoteEvent get _value => super._value as _$QuestionUpVoteEvent;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$QuestionUpVoteEvent(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
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

class _$QuestionUpVoteEvent implements QuestionUpVoteEvent {
  const _$QuestionUpVoteEvent(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionEvent.upVote(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionUpVoteEvent &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  _$$QuestionUpVoteEventCopyWith<_$QuestionUpVoteEvent> get copyWith =>
      __$$QuestionUpVoteEventCopyWithImpl<_$QuestionUpVoteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question) upVote,
    required TResult Function(Question question) downVote,
  }) {
    return upVote(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
  }) {
    return upVote?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
    required TResult orElse(),
  }) {
    if (upVote != null) {
      return upVote(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLoadEvent value) load,
    required TResult Function(QuestionDeleteEvent value) delete,
    required TResult Function(QuestionUpVoteEvent value) upVote,
    required TResult Function(QuestionDownVoteEvent value) downVote,
  }) {
    return upVote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
  }) {
    return upVote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
    required TResult orElse(),
  }) {
    if (upVote != null) {
      return upVote(this);
    }
    return orElse();
  }
}

abstract class QuestionUpVoteEvent implements QuestionEvent {
  const factory QuestionUpVoteEvent(final Question question) =
      _$QuestionUpVoteEvent;

  Question get question => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionUpVoteEventCopyWith<_$QuestionUpVoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionDownVoteEventCopyWith<$Res> {
  factory _$$QuestionDownVoteEventCopyWith(_$QuestionDownVoteEvent value,
          $Res Function(_$QuestionDownVoteEvent) then) =
      __$$QuestionDownVoteEventCopyWithImpl<$Res>;
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionDownVoteEventCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res>
    implements _$$QuestionDownVoteEventCopyWith<$Res> {
  __$$QuestionDownVoteEventCopyWithImpl(_$QuestionDownVoteEvent _value,
      $Res Function(_$QuestionDownVoteEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionDownVoteEvent));

  @override
  _$QuestionDownVoteEvent get _value => super._value as _$QuestionDownVoteEvent;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$QuestionDownVoteEvent(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
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

class _$QuestionDownVoteEvent implements QuestionDownVoteEvent {
  const _$QuestionDownVoteEvent(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionEvent.downVote(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDownVoteEvent &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  _$$QuestionDownVoteEventCopyWith<_$QuestionDownVoteEvent> get copyWith =>
      __$$QuestionDownVoteEventCopyWithImpl<_$QuestionDownVoteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionId) load,
    required TResult Function(int questionId) delete,
    required TResult Function(Question question) upVote,
    required TResult Function(Question question) downVote,
  }) {
    return downVote(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
  }) {
    return downVote?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId)? load,
    TResult Function(int questionId)? delete,
    TResult Function(Question question)? upVote,
    TResult Function(Question question)? downVote,
    required TResult orElse(),
  }) {
    if (downVote != null) {
      return downVote(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLoadEvent value) load,
    required TResult Function(QuestionDeleteEvent value) delete,
    required TResult Function(QuestionUpVoteEvent value) upVote,
    required TResult Function(QuestionDownVoteEvent value) downVote,
  }) {
    return downVote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
  }) {
    return downVote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLoadEvent value)? load,
    TResult Function(QuestionDeleteEvent value)? delete,
    TResult Function(QuestionUpVoteEvent value)? upVote,
    TResult Function(QuestionDownVoteEvent value)? downVote,
    required TResult orElse(),
  }) {
    if (downVote != null) {
      return downVote(this);
    }
    return orElse();
  }
}

abstract class QuestionDownVoteEvent implements QuestionEvent {
  const factory QuestionDownVoteEvent(final Question question) =
      _$QuestionDownVoteEvent;

  Question get question => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionDownVoteEventCopyWith<_$QuestionDownVoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
