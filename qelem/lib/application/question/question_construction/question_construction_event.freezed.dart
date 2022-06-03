// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_construction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionConstructionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(int questionId) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(int questionId)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(int questionId)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionConstructionEmptyEvent value) empty,
    required TResult Function(QuestionConstructionUpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionConstructionEmptyEvent value)? empty,
    TResult Function(QuestionConstructionUpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionConstructionEmptyEvent value)? empty,
    TResult Function(QuestionConstructionUpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionConstructionEventCopyWith<$Res> {
  factory $QuestionConstructionEventCopyWith(QuestionConstructionEvent value,
          $Res Function(QuestionConstructionEvent) then) =
      _$QuestionConstructionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionConstructionEventCopyWithImpl<$Res>
    implements $QuestionConstructionEventCopyWith<$Res> {
  _$QuestionConstructionEventCopyWithImpl(this._value, this._then);

  final QuestionConstructionEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionConstructionEvent) _then;
}

/// @nodoc
abstract class _$$QuestionConstructionEmptyEventCopyWith<$Res> {
  factory _$$QuestionConstructionEmptyEventCopyWith(
          _$QuestionConstructionEmptyEvent value,
          $Res Function(_$QuestionConstructionEmptyEvent) then) =
      __$$QuestionConstructionEmptyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionConstructionEmptyEventCopyWithImpl<$Res>
    extends _$QuestionConstructionEventCopyWithImpl<$Res>
    implements _$$QuestionConstructionEmptyEventCopyWith<$Res> {
  __$$QuestionConstructionEmptyEventCopyWithImpl(
      _$QuestionConstructionEmptyEvent _value,
      $Res Function(_$QuestionConstructionEmptyEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionConstructionEmptyEvent));

  @override
  _$QuestionConstructionEmptyEvent get _value =>
      super._value as _$QuestionConstructionEmptyEvent;
}

/// @nodoc

class _$QuestionConstructionEmptyEvent
    implements QuestionConstructionEmptyEvent {
  const _$QuestionConstructionEmptyEvent();

  @override
  String toString() {
    return 'QuestionConstructionEvent.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionConstructionEmptyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(int questionId) update,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(int questionId)? update,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(int questionId)? update,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionConstructionEmptyEvent value) empty,
    required TResult Function(QuestionConstructionUpdateEvent value) update,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionConstructionEmptyEvent value)? empty,
    TResult Function(QuestionConstructionUpdateEvent value)? update,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionConstructionEmptyEvent value)? empty,
    TResult Function(QuestionConstructionUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class QuestionConstructionEmptyEvent
    implements QuestionConstructionEvent {
  const factory QuestionConstructionEmptyEvent() =
      _$QuestionConstructionEmptyEvent;
}

/// @nodoc
abstract class _$$QuestionConstructionUpdateEventCopyWith<$Res> {
  factory _$$QuestionConstructionUpdateEventCopyWith(
          _$QuestionConstructionUpdateEvent value,
          $Res Function(_$QuestionConstructionUpdateEvent) then) =
      __$$QuestionConstructionUpdateEventCopyWithImpl<$Res>;
  $Res call({int questionId});
}

/// @nodoc
class __$$QuestionConstructionUpdateEventCopyWithImpl<$Res>
    extends _$QuestionConstructionEventCopyWithImpl<$Res>
    implements _$$QuestionConstructionUpdateEventCopyWith<$Res> {
  __$$QuestionConstructionUpdateEventCopyWithImpl(
      _$QuestionConstructionUpdateEvent _value,
      $Res Function(_$QuestionConstructionUpdateEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionConstructionUpdateEvent));

  @override
  _$QuestionConstructionUpdateEvent get _value =>
      super._value as _$QuestionConstructionUpdateEvent;

  @override
  $Res call({
    Object? questionId = freezed,
  }) {
    return _then(_$QuestionConstructionUpdateEvent(
      questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionConstructionUpdateEvent
    implements QuestionConstructionUpdateEvent {
  const _$QuestionConstructionUpdateEvent(this.questionId);

  @override
  final int questionId;

  @override
  String toString() {
    return 'QuestionConstructionEvent.update(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionConstructionUpdateEvent &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$QuestionConstructionUpdateEventCopyWith<_$QuestionConstructionUpdateEvent>
      get copyWith => __$$QuestionConstructionUpdateEventCopyWithImpl<
          _$QuestionConstructionUpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(int questionId) update,
  }) {
    return update(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(int questionId)? update,
  }) {
    return update?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(int questionId)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionConstructionEmptyEvent value) empty,
    required TResult Function(QuestionConstructionUpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionConstructionEmptyEvent value)? empty,
    TResult Function(QuestionConstructionUpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionConstructionEmptyEvent value)? empty,
    TResult Function(QuestionConstructionUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class QuestionConstructionUpdateEvent
    implements QuestionConstructionEvent {
  const factory QuestionConstructionUpdateEvent(final int questionId) =
      _$QuestionConstructionUpdateEvent;

  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionConstructionUpdateEventCopyWith<_$QuestionConstructionUpdateEvent>
      get copyWith => throw _privateConstructorUsedError;
}
