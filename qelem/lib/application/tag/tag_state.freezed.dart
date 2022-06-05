// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tag_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TagState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Tag> tags) loadedTags,
    required TResult Function(Error error) error,
    required TResult Function(String message) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TagStateInitial value) initial,
    required TResult Function(TagStateLoading value) loading,
    required TResult Function(TagStateLoadedTags value) loadedTags,
    required TResult Function(TagStateError value) error,
    required TResult Function(TagStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagStateCopyWith<$Res> {
  factory $TagStateCopyWith(TagState value, $Res Function(TagState) then) =
      _$TagStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagStateCopyWithImpl<$Res> implements $TagStateCopyWith<$Res> {
  _$TagStateCopyWithImpl(this._value, this._then);

  final TagState _value;
  // ignore: unused_field
  final $Res Function(TagState) _then;
}

/// @nodoc
abstract class _$$TagStateInitialCopyWith<$Res> {
  factory _$$TagStateInitialCopyWith(
          _$TagStateInitial value, $Res Function(_$TagStateInitial) then) =
      __$$TagStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TagStateInitialCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$$TagStateInitialCopyWith<$Res> {
  __$$TagStateInitialCopyWithImpl(
      _$TagStateInitial _value, $Res Function(_$TagStateInitial) _then)
      : super(_value, (v) => _then(v as _$TagStateInitial));

  @override
  _$TagStateInitial get _value => super._value as _$TagStateInitial;
}

/// @nodoc

class _$TagStateInitial implements TagStateInitial {
  const _$TagStateInitial();

  @override
  String toString() {
    return 'TagState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TagStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Tag> tags) loadedTags,
    required TResult Function(Error error) error,
    required TResult Function(String message) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TagStateInitial value) initial,
    required TResult Function(TagStateLoading value) loading,
    required TResult Function(TagStateLoadedTags value) loadedTags,
    required TResult Function(TagStateError value) error,
    required TResult Function(TagStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TagStateInitial implements TagState {
  const factory TagStateInitial() = _$TagStateInitial;
}

/// @nodoc
abstract class _$$TagStateLoadingCopyWith<$Res> {
  factory _$$TagStateLoadingCopyWith(
          _$TagStateLoading value, $Res Function(_$TagStateLoading) then) =
      __$$TagStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TagStateLoadingCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$$TagStateLoadingCopyWith<$Res> {
  __$$TagStateLoadingCopyWithImpl(
      _$TagStateLoading _value, $Res Function(_$TagStateLoading) _then)
      : super(_value, (v) => _then(v as _$TagStateLoading));

  @override
  _$TagStateLoading get _value => super._value as _$TagStateLoading;
}

/// @nodoc

class _$TagStateLoading implements TagStateLoading {
  const _$TagStateLoading();

  @override
  String toString() {
    return 'TagState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TagStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Tag> tags) loadedTags,
    required TResult Function(Error error) error,
    required TResult Function(String message) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
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
    required TResult Function(TagStateInitial value) initial,
    required TResult Function(TagStateLoading value) loading,
    required TResult Function(TagStateLoadedTags value) loadedTags,
    required TResult Function(TagStateError value) error,
    required TResult Function(TagStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TagStateLoading implements TagState {
  const factory TagStateLoading() = _$TagStateLoading;
}

/// @nodoc
abstract class _$$TagStateLoadedTagsCopyWith<$Res> {
  factory _$$TagStateLoadedTagsCopyWith(_$TagStateLoadedTags value,
          $Res Function(_$TagStateLoadedTags) then) =
      __$$TagStateLoadedTagsCopyWithImpl<$Res>;
  $Res call({List<Tag> tags});
}

/// @nodoc
class __$$TagStateLoadedTagsCopyWithImpl<$Res>
    extends _$TagStateCopyWithImpl<$Res>
    implements _$$TagStateLoadedTagsCopyWith<$Res> {
  __$$TagStateLoadedTagsCopyWithImpl(
      _$TagStateLoadedTags _value, $Res Function(_$TagStateLoadedTags) _then)
      : super(_value, (v) => _then(v as _$TagStateLoadedTags));

  @override
  _$TagStateLoadedTags get _value => super._value as _$TagStateLoadedTags;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_$TagStateLoadedTags(
      tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc

class _$TagStateLoadedTags implements TagStateLoadedTags {
  const _$TagStateLoadedTags(final List<Tag> tags) : _tags = tags;

  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'TagState.loadedTags(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagStateLoadedTags &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$TagStateLoadedTagsCopyWith<_$TagStateLoadedTags> get copyWith =>
      __$$TagStateLoadedTagsCopyWithImpl<_$TagStateLoadedTags>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Tag> tags) loadedTags,
    required TResult Function(Error error) error,
    required TResult Function(String message) success,
  }) {
    return loadedTags(tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
  }) {
    return loadedTags?.call(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (loadedTags != null) {
      return loadedTags(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TagStateInitial value) initial,
    required TResult Function(TagStateLoading value) loading,
    required TResult Function(TagStateLoadedTags value) loadedTags,
    required TResult Function(TagStateError value) error,
    required TResult Function(TagStateSuccess value) success,
  }) {
    return loadedTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
  }) {
    return loadedTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loadedTags != null) {
      return loadedTags(this);
    }
    return orElse();
  }
}

abstract class TagStateLoadedTags implements TagState {
  const factory TagStateLoadedTags(final List<Tag> tags) = _$TagStateLoadedTags;

  List<Tag> get tags => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TagStateLoadedTagsCopyWith<_$TagStateLoadedTags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TagStateErrorCopyWith<$Res> {
  factory _$$TagStateErrorCopyWith(
          _$TagStateError value, $Res Function(_$TagStateError) then) =
      __$$TagStateErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$$TagStateErrorCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$$TagStateErrorCopyWith<$Res> {
  __$$TagStateErrorCopyWithImpl(
      _$TagStateError _value, $Res Function(_$TagStateError) _then)
      : super(_value, (v) => _then(v as _$TagStateError));

  @override
  _$TagStateError get _value => super._value as _$TagStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$TagStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$TagStateError implements TagStateError {
  const _$TagStateError(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'TagState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$TagStateErrorCopyWith<_$TagStateError> get copyWith =>
      __$$TagStateErrorCopyWithImpl<_$TagStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Tag> tags) loadedTags,
    required TResult Function(Error error) error,
    required TResult Function(String message) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
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
    required TResult Function(TagStateInitial value) initial,
    required TResult Function(TagStateLoading value) loading,
    required TResult Function(TagStateLoadedTags value) loadedTags,
    required TResult Function(TagStateError value) error,
    required TResult Function(TagStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TagStateError implements TagState {
  const factory TagStateError(final Error error) = _$TagStateError;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TagStateErrorCopyWith<_$TagStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TagStateSuccessCopyWith<$Res> {
  factory _$$TagStateSuccessCopyWith(
          _$TagStateSuccess value, $Res Function(_$TagStateSuccess) then) =
      __$$TagStateSuccessCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$TagStateSuccessCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$$TagStateSuccessCopyWith<$Res> {
  __$$TagStateSuccessCopyWithImpl(
      _$TagStateSuccess _value, $Res Function(_$TagStateSuccess) _then)
      : super(_value, (v) => _then(v as _$TagStateSuccess));

  @override
  _$TagStateSuccess get _value => super._value as _$TagStateSuccess;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TagStateSuccess(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TagStateSuccess implements TagStateSuccess {
  const _$TagStateSuccess(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TagState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagStateSuccess &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$TagStateSuccessCopyWith<_$TagStateSuccess> get copyWith =>
      __$$TagStateSuccessCopyWithImpl<_$TagStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Tag> tags) loadedTags,
    required TResult Function(Error error) error,
    required TResult Function(String message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Tag> tags)? loadedTags,
    TResult Function(Error error)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TagStateInitial value) initial,
    required TResult Function(TagStateLoading value) loading,
    required TResult Function(TagStateLoadedTags value) loadedTags,
    required TResult Function(TagStateError value) error,
    required TResult Function(TagStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagStateInitial value)? initial,
    TResult Function(TagStateLoading value)? loading,
    TResult Function(TagStateLoadedTags value)? loadedTags,
    TResult Function(TagStateError value)? error,
    TResult Function(TagStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TagStateSuccess implements TagState {
  const factory TagStateSuccess(final String message) = _$TagStateSuccess;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TagStateSuccessCopyWith<_$TagStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
