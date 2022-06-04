// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_construction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionConstructionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function(Question question) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionPostStateEmpty value) empty,
    required TResult Function(QuestionPostStateError value) error,
    required TResult Function(QuestionPostStateLoading value) loading,
    required TResult Function(QuestionPostStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionConstructionStateCopyWith<$Res> {
  factory $QuestionConstructionStateCopyWith(QuestionConstructionState value,
          $Res Function(QuestionConstructionState) then) =
      _$QuestionConstructionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionConstructionStateCopyWithImpl<$Res>
    implements $QuestionConstructionStateCopyWith<$Res> {
  _$QuestionConstructionStateCopyWithImpl(this._value, this._then);

  final QuestionConstructionState _value;
  // ignore: unused_field
  final $Res Function(QuestionConstructionState) _then;
}

/// @nodoc
abstract class _$$QuestionPostStateEmptyCopyWith<$Res> {
  factory _$$QuestionPostStateEmptyCopyWith(_$QuestionPostStateEmpty value,
          $Res Function(_$QuestionPostStateEmpty) then) =
      __$$QuestionPostStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionPostStateEmptyCopyWithImpl<$Res>
    extends _$QuestionConstructionStateCopyWithImpl<$Res>
    implements _$$QuestionPostStateEmptyCopyWith<$Res> {
  __$$QuestionPostStateEmptyCopyWithImpl(_$QuestionPostStateEmpty _value,
      $Res Function(_$QuestionPostStateEmpty) _then)
      : super(_value, (v) => _then(v as _$QuestionPostStateEmpty));

  @override
  _$QuestionPostStateEmpty get _value =>
      super._value as _$QuestionPostStateEmpty;
}

/// @nodoc

class _$QuestionPostStateEmpty
    with DiagnosticableTreeMixin
    implements QuestionPostStateEmpty {
  const _$QuestionPostStateEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionConstructionState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'QuestionConstructionState.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuestionPostStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function(Question question) success,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
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
    required TResult Function(QuestionPostStateEmpty value) empty,
    required TResult Function(QuestionPostStateError value) error,
    required TResult Function(QuestionPostStateLoading value) loading,
    required TResult Function(QuestionPostStateSuccess value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class QuestionPostStateEmpty implements QuestionConstructionState {
  const factory QuestionPostStateEmpty() = _$QuestionPostStateEmpty;
}

/// @nodoc
abstract class _$$QuestionPostStateErrorCopyWith<$Res> {
  factory _$$QuestionPostStateErrorCopyWith(_$QuestionPostStateError value,
          $Res Function(_$QuestionPostStateError) then) =
      __$$QuestionPostStateErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$$QuestionPostStateErrorCopyWithImpl<$Res>
    extends _$QuestionConstructionStateCopyWithImpl<$Res>
    implements _$$QuestionPostStateErrorCopyWith<$Res> {
  __$$QuestionPostStateErrorCopyWithImpl(_$QuestionPostStateError _value,
      $Res Function(_$QuestionPostStateError) _then)
      : super(_value, (v) => _then(v as _$QuestionPostStateError));

  @override
  _$QuestionPostStateError get _value =>
      super._value as _$QuestionPostStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$QuestionPostStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$QuestionPostStateError
    with DiagnosticableTreeMixin
    implements QuestionPostStateError {
  const _$QuestionPostStateError(this.error);

  @override
  final Error error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionConstructionState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionConstructionState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionPostStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$QuestionPostStateErrorCopyWith<_$QuestionPostStateError> get copyWith =>
      __$$QuestionPostStateErrorCopyWithImpl<_$QuestionPostStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function(Question question) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
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
    required TResult Function(QuestionPostStateEmpty value) empty,
    required TResult Function(QuestionPostStateError value) error,
    required TResult Function(QuestionPostStateLoading value) loading,
    required TResult Function(QuestionPostStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuestionPostStateError implements QuestionConstructionState {
  const factory QuestionPostStateError(final Error error) =
      _$QuestionPostStateError;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionPostStateErrorCopyWith<_$QuestionPostStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionPostStateLoadingCopyWith<$Res> {
  factory _$$QuestionPostStateLoadingCopyWith(_$QuestionPostStateLoading value,
          $Res Function(_$QuestionPostStateLoading) then) =
      __$$QuestionPostStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionPostStateLoadingCopyWithImpl<$Res>
    extends _$QuestionConstructionStateCopyWithImpl<$Res>
    implements _$$QuestionPostStateLoadingCopyWith<$Res> {
  __$$QuestionPostStateLoadingCopyWithImpl(_$QuestionPostStateLoading _value,
      $Res Function(_$QuestionPostStateLoading) _then)
      : super(_value, (v) => _then(v as _$QuestionPostStateLoading));

  @override
  _$QuestionPostStateLoading get _value =>
      super._value as _$QuestionPostStateLoading;
}

/// @nodoc

class _$QuestionPostStateLoading
    with DiagnosticableTreeMixin
    implements QuestionPostStateLoading {
  const _$QuestionPostStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionConstructionState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'QuestionConstructionState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionPostStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function(Question question) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
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
    required TResult Function(QuestionPostStateEmpty value) empty,
    required TResult Function(QuestionPostStateError value) error,
    required TResult Function(QuestionPostStateLoading value) loading,
    required TResult Function(QuestionPostStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuestionPostStateLoading implements QuestionConstructionState {
  const factory QuestionPostStateLoading() = _$QuestionPostStateLoading;
}

/// @nodoc
abstract class _$$QuestionPostStateSuccessCopyWith<$Res> {
  factory _$$QuestionPostStateSuccessCopyWith(_$QuestionPostStateSuccess value,
          $Res Function(_$QuestionPostStateSuccess) then) =
      __$$QuestionPostStateSuccessCopyWithImpl<$Res>;
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionPostStateSuccessCopyWithImpl<$Res>
    extends _$QuestionConstructionStateCopyWithImpl<$Res>
    implements _$$QuestionPostStateSuccessCopyWith<$Res> {
  __$$QuestionPostStateSuccessCopyWithImpl(_$QuestionPostStateSuccess _value,
      $Res Function(_$QuestionPostStateSuccess) _then)
      : super(_value, (v) => _then(v as _$QuestionPostStateSuccess));

  @override
  _$QuestionPostStateSuccess get _value =>
      super._value as _$QuestionPostStateSuccess;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$QuestionPostStateSuccess(
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

class _$QuestionPostStateSuccess
    with DiagnosticableTreeMixin
    implements QuestionPostStateSuccess {
  const _$QuestionPostStateSuccess(this.question);

  @override
  final Question question;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionConstructionState.success(question: $question)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionConstructionState.success'))
      ..add(DiagnosticsProperty('question', question));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionPostStateSuccess &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  _$$QuestionPostStateSuccessCopyWith<_$QuestionPostStateSuccess>
      get copyWith =>
          __$$QuestionPostStateSuccessCopyWithImpl<_$QuestionPostStateSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function(Question question) success,
  }) {
    return success(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
  }) {
    return success?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function(Question question)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionPostStateEmpty value) empty,
    required TResult Function(QuestionPostStateError value) error,
    required TResult Function(QuestionPostStateLoading value) loading,
    required TResult Function(QuestionPostStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostStateEmpty value)? empty,
    TResult Function(QuestionPostStateError value)? error,
    TResult Function(QuestionPostStateLoading value)? loading,
    TResult Function(QuestionPostStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class QuestionPostStateSuccess implements QuestionConstructionState {
  const factory QuestionPostStateSuccess(final Question question) =
      _$QuestionPostStateSuccess;

  Question get question => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionPostStateSuccessCopyWith<_$QuestionPostStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
