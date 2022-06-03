// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() rollBack,
    required TResult Function(Error error) error,
    required TResult Function(Question question) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionLoading value) loading,
    required TResult Function(_QuestionRollBack value) rollBack,
    required TResult Function(_QuestionError value) error,
    required TResult Function(_QuestionFetched value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  final QuestionState _value;
  // ignore: unused_field
  final $Res Function(QuestionState) _then;
}

/// @nodoc
abstract class _$$_QuestionLoadingCopyWith<$Res> {
  factory _$$_QuestionLoadingCopyWith(
          _$_QuestionLoading value, $Res Function(_$_QuestionLoading) then) =
      __$$_QuestionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuestionLoadingCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$_QuestionLoadingCopyWith<$Res> {
  __$$_QuestionLoadingCopyWithImpl(
      _$_QuestionLoading _value, $Res Function(_$_QuestionLoading) _then)
      : super(_value, (v) => _then(v as _$_QuestionLoading));

  @override
  _$_QuestionLoading get _value => super._value as _$_QuestionLoading;
}

/// @nodoc

class _$_QuestionLoading implements _QuestionLoading {
  const _$_QuestionLoading();

  @override
  String toString() {
    return 'QuestionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QuestionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() rollBack,
    required TResult Function(Error error) error,
    required TResult Function(Question question) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionLoading value) loading,
    required TResult Function(_QuestionRollBack value) rollBack,
    required TResult Function(_QuestionError value) error,
    required TResult Function(_QuestionFetched value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _QuestionLoading implements QuestionState {
  const factory _QuestionLoading() = _$_QuestionLoading;
}

/// @nodoc
abstract class _$$_QuestionRollBackCopyWith<$Res> {
  factory _$$_QuestionRollBackCopyWith(
          _$_QuestionRollBack value, $Res Function(_$_QuestionRollBack) then) =
      __$$_QuestionRollBackCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuestionRollBackCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$_QuestionRollBackCopyWith<$Res> {
  __$$_QuestionRollBackCopyWithImpl(
      _$_QuestionRollBack _value, $Res Function(_$_QuestionRollBack) _then)
      : super(_value, (v) => _then(v as _$_QuestionRollBack));

  @override
  _$_QuestionRollBack get _value => super._value as _$_QuestionRollBack;
}

/// @nodoc

class _$_QuestionRollBack implements _QuestionRollBack {
  const _$_QuestionRollBack();

  @override
  String toString() {
    return 'QuestionState.rollBack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QuestionRollBack);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() rollBack,
    required TResult Function(Error error) error,
    required TResult Function(Question question) loaded,
  }) {
    return rollBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
  }) {
    return rollBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
    required TResult orElse(),
  }) {
    if (rollBack != null) {
      return rollBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionLoading value) loading,
    required TResult Function(_QuestionRollBack value) rollBack,
    required TResult Function(_QuestionError value) error,
    required TResult Function(_QuestionFetched value) loaded,
  }) {
    return rollBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
  }) {
    return rollBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
    required TResult orElse(),
  }) {
    if (rollBack != null) {
      return rollBack(this);
    }
    return orElse();
  }
}

abstract class _QuestionRollBack implements QuestionState {
  const factory _QuestionRollBack() = _$_QuestionRollBack;
}

/// @nodoc
abstract class _$$_QuestionErrorCopyWith<$Res> {
  factory _$$_QuestionErrorCopyWith(
          _$_QuestionError value, $Res Function(_$_QuestionError) then) =
      __$$_QuestionErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$$_QuestionErrorCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$_QuestionErrorCopyWith<$Res> {
  __$$_QuestionErrorCopyWithImpl(
      _$_QuestionError _value, $Res Function(_$_QuestionError) _then)
      : super(_value, (v) => _then(v as _$_QuestionError));

  @override
  _$_QuestionError get _value => super._value as _$_QuestionError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_QuestionError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$_QuestionError implements _QuestionError {
  const _$_QuestionError(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'QuestionState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionErrorCopyWith<_$_QuestionError> get copyWith =>
      __$$_QuestionErrorCopyWithImpl<_$_QuestionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() rollBack,
    required TResult Function(Error error) error,
    required TResult Function(Question question) loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionLoading value) loading,
    required TResult Function(_QuestionRollBack value) rollBack,
    required TResult Function(_QuestionError value) error,
    required TResult Function(_QuestionFetched value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _QuestionError implements QuestionState {
  const factory _QuestionError(final Error error) = _$_QuestionError;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_QuestionErrorCopyWith<_$_QuestionError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuestionFetchedCopyWith<$Res> {
  factory _$$_QuestionFetchedCopyWith(
          _$_QuestionFetched value, $Res Function(_$_QuestionFetched) then) =
      __$$_QuestionFetchedCopyWithImpl<$Res>;
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$_QuestionFetchedCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$_QuestionFetchedCopyWith<$Res> {
  __$$_QuestionFetchedCopyWithImpl(
      _$_QuestionFetched _value, $Res Function(_$_QuestionFetched) _then)
      : super(_value, (v) => _then(v as _$_QuestionFetched));

  @override
  _$_QuestionFetched get _value => super._value as _$_QuestionFetched;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$_QuestionFetched(
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

class _$_QuestionFetched implements _QuestionFetched {
  const _$_QuestionFetched(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionState.loaded(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionFetched &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionFetchedCopyWith<_$_QuestionFetched> get copyWith =>
      __$$_QuestionFetchedCopyWithImpl<_$_QuestionFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() rollBack,
    required TResult Function(Error error) error,
    required TResult Function(Question question) loaded,
  }) {
    return loaded(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
  }) {
    return loaded?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? rollBack,
    TResult Function(Error error)? error,
    TResult Function(Question question)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionLoading value) loading,
    required TResult Function(_QuestionRollBack value) rollBack,
    required TResult Function(_QuestionError value) error,
    required TResult Function(_QuestionFetched value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionLoading value)? loading,
    TResult Function(_QuestionRollBack value)? rollBack,
    TResult Function(_QuestionError value)? error,
    TResult Function(_QuestionFetched value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _QuestionFetched implements QuestionState {
  const factory _QuestionFetched(final Question question) = _$_QuestionFetched;

  Question get question => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_QuestionFetchedCopyWith<_$_QuestionFetched> get copyWith =>
      throw _privateConstructorUsedError;
}
