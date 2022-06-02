// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questions_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Question> question) success,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionsListSuccess value) success,
    required TResult Function(_QuestionsListError value) error,
    required TResult Function(_QuestionsListLoading value) loading,
    required TResult Function(_QuestionsListEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsListStateCopyWith<$Res> {
  factory $QuestionsListStateCopyWith(
          QuestionsListState value, $Res Function(QuestionsListState) then) =
      _$QuestionsListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionsListStateCopyWithImpl<$Res>
    implements $QuestionsListStateCopyWith<$Res> {
  _$QuestionsListStateCopyWithImpl(this._value, this._then);

  final QuestionsListState _value;
  // ignore: unused_field
  final $Res Function(QuestionsListState) _then;
}

/// @nodoc
abstract class _$$_QuestionsListSuccessCopyWith<$Res> {
  factory _$$_QuestionsListSuccessCopyWith(_$_QuestionsListSuccess value,
          $Res Function(_$_QuestionsListSuccess) then) =
      __$$_QuestionsListSuccessCopyWithImpl<$Res>;
  $Res call({List<Question> question});
}

/// @nodoc
class __$$_QuestionsListSuccessCopyWithImpl<$Res>
    extends _$QuestionsListStateCopyWithImpl<$Res>
    implements _$$_QuestionsListSuccessCopyWith<$Res> {
  __$$_QuestionsListSuccessCopyWithImpl(_$_QuestionsListSuccess _value,
      $Res Function(_$_QuestionsListSuccess) _then)
      : super(_value, (v) => _then(v as _$_QuestionsListSuccess));

  @override
  _$_QuestionsListSuccess get _value => super._value as _$_QuestionsListSuccess;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$_QuestionsListSuccess(
      question == freezed
          ? _value._question
          : question // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_QuestionsListSuccess implements _QuestionsListSuccess {
  const _$_QuestionsListSuccess(final List<Question> question)
      : _question = question;

  final List<Question> _question;
  @override
  List<Question> get question {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_question);
  }

  @override
  String toString() {
    return 'QuestionsListState.success(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionsListSuccess &&
            const DeepCollectionEquality().equals(other._question, _question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_question));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionsListSuccessCopyWith<_$_QuestionsListSuccess> get copyWith =>
      __$$_QuestionsListSuccessCopyWithImpl<_$_QuestionsListSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Question> question) success,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return success(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
  }) {
    return success?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
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
    required TResult Function(_QuestionsListSuccess value) success,
    required TResult Function(_QuestionsListError value) error,
    required TResult Function(_QuestionsListLoading value) loading,
    required TResult Function(_QuestionsListEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _QuestionsListSuccess implements QuestionsListState {
  const factory _QuestionsListSuccess(final List<Question> question) =
      _$_QuestionsListSuccess;

  List<Question> get question => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_QuestionsListSuccessCopyWith<_$_QuestionsListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuestionsListErrorCopyWith<$Res> {
  factory _$$_QuestionsListErrorCopyWith(_$_QuestionsListError value,
          $Res Function(_$_QuestionsListError) then) =
      __$$_QuestionsListErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$$_QuestionsListErrorCopyWithImpl<$Res>
    extends _$QuestionsListStateCopyWithImpl<$Res>
    implements _$$_QuestionsListErrorCopyWith<$Res> {
  __$$_QuestionsListErrorCopyWithImpl(
      _$_QuestionsListError _value, $Res Function(_$_QuestionsListError) _then)
      : super(_value, (v) => _then(v as _$_QuestionsListError));

  @override
  _$_QuestionsListError get _value => super._value as _$_QuestionsListError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_QuestionsListError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$_QuestionsListError implements _QuestionsListError {
  const _$_QuestionsListError(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'QuestionsListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionsListError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionsListErrorCopyWith<_$_QuestionsListError> get copyWith =>
      __$$_QuestionsListErrorCopyWithImpl<_$_QuestionsListError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Question> question) success,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
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
    required TResult Function(_QuestionsListSuccess value) success,
    required TResult Function(_QuestionsListError value) error,
    required TResult Function(_QuestionsListLoading value) loading,
    required TResult Function(_QuestionsListEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _QuestionsListError implements QuestionsListState {
  const factory _QuestionsListError(final Error error) = _$_QuestionsListError;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_QuestionsListErrorCopyWith<_$_QuestionsListError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuestionsListLoadingCopyWith<$Res> {
  factory _$$_QuestionsListLoadingCopyWith(_$_QuestionsListLoading value,
          $Res Function(_$_QuestionsListLoading) then) =
      __$$_QuestionsListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuestionsListLoadingCopyWithImpl<$Res>
    extends _$QuestionsListStateCopyWithImpl<$Res>
    implements _$$_QuestionsListLoadingCopyWith<$Res> {
  __$$_QuestionsListLoadingCopyWithImpl(_$_QuestionsListLoading _value,
      $Res Function(_$_QuestionsListLoading) _then)
      : super(_value, (v) => _then(v as _$_QuestionsListLoading));

  @override
  _$_QuestionsListLoading get _value => super._value as _$_QuestionsListLoading;
}

/// @nodoc

class _$_QuestionsListLoading implements _QuestionsListLoading {
  const _$_QuestionsListLoading();

  @override
  String toString() {
    return 'QuestionsListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QuestionsListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Question> question) success,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
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
    required TResult Function(_QuestionsListSuccess value) success,
    required TResult Function(_QuestionsListError value) error,
    required TResult Function(_QuestionsListLoading value) loading,
    required TResult Function(_QuestionsListEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _QuestionsListLoading implements QuestionsListState {
  const factory _QuestionsListLoading() = _$_QuestionsListLoading;
}

/// @nodoc
abstract class _$$_QuestionsListEmptyCopyWith<$Res> {
  factory _$$_QuestionsListEmptyCopyWith(_$_QuestionsListEmpty value,
          $Res Function(_$_QuestionsListEmpty) then) =
      __$$_QuestionsListEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuestionsListEmptyCopyWithImpl<$Res>
    extends _$QuestionsListStateCopyWithImpl<$Res>
    implements _$$_QuestionsListEmptyCopyWith<$Res> {
  __$$_QuestionsListEmptyCopyWithImpl(
      _$_QuestionsListEmpty _value, $Res Function(_$_QuestionsListEmpty) _then)
      : super(_value, (v) => _then(v as _$_QuestionsListEmpty));

  @override
  _$_QuestionsListEmpty get _value => super._value as _$_QuestionsListEmpty;
}

/// @nodoc

class _$_QuestionsListEmpty implements _QuestionsListEmpty {
  const _$_QuestionsListEmpty();

  @override
  String toString() {
    return 'QuestionsListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QuestionsListEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Question> question) success,
    required TResult Function(Error error) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Question> question)? success,
    TResult Function(Error error)? error,
    TResult Function()? loading,
    TResult Function()? empty,
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
    required TResult Function(_QuestionsListSuccess value) success,
    required TResult Function(_QuestionsListError value) error,
    required TResult Function(_QuestionsListLoading value) loading,
    required TResult Function(_QuestionsListEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionsListSuccess value)? success,
    TResult Function(_QuestionsListError value)? error,
    TResult Function(_QuestionsListLoading value)? loading,
    TResult Function(_QuestionsListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _QuestionsListEmpty implements QuestionsListState {
  const factory _QuestionsListEmpty() = _$_QuestionsListEmpty;
}
