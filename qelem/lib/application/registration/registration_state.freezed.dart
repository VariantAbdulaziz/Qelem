// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationStateInitial value) initial,
    required TResult Function(RegistrationStateLoading value) loading,
    required TResult Function(RegistrationStateSuccess value) success,
    required TResult Function(RegistrationStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  final RegistrationState _value;
  // ignore: unused_field
  final $Res Function(RegistrationState) _then;
}

/// @nodoc
abstract class _$$RegistrationStateInitialCopyWith<$Res> {
  factory _$$RegistrationStateInitialCopyWith(_$RegistrationStateInitial value,
          $Res Function(_$RegistrationStateInitial) then) =
      __$$RegistrationStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationStateInitialCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements _$$RegistrationStateInitialCopyWith<$Res> {
  __$$RegistrationStateInitialCopyWithImpl(_$RegistrationStateInitial _value,
      $Res Function(_$RegistrationStateInitial) _then)
      : super(_value, (v) => _then(v as _$RegistrationStateInitial));

  @override
  _$RegistrationStateInitial get _value =>
      super._value as _$RegistrationStateInitial;
}

/// @nodoc

class _$RegistrationStateInitial implements RegistrationStateInitial {
  const _$RegistrationStateInitial();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
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
    required TResult Function(RegistrationStateInitial value) initial,
    required TResult Function(RegistrationStateLoading value) loading,
    required TResult Function(RegistrationStateSuccess value) success,
    required TResult Function(RegistrationStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegistrationStateInitial implements RegistrationState {
  const factory RegistrationStateInitial() = _$RegistrationStateInitial;
}

/// @nodoc
abstract class _$$RegistrationStateLoadingCopyWith<$Res> {
  factory _$$RegistrationStateLoadingCopyWith(_$RegistrationStateLoading value,
          $Res Function(_$RegistrationStateLoading) then) =
      __$$RegistrationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationStateLoadingCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements _$$RegistrationStateLoadingCopyWith<$Res> {
  __$$RegistrationStateLoadingCopyWithImpl(_$RegistrationStateLoading _value,
      $Res Function(_$RegistrationStateLoading) _then)
      : super(_value, (v) => _then(v as _$RegistrationStateLoading));

  @override
  _$RegistrationStateLoading get _value =>
      super._value as _$RegistrationStateLoading;
}

/// @nodoc

class _$RegistrationStateLoading implements RegistrationStateLoading {
  const _$RegistrationStateLoading();

  @override
  String toString() {
    return 'RegistrationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
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
    required TResult Function(RegistrationStateInitial value) initial,
    required TResult Function(RegistrationStateLoading value) loading,
    required TResult Function(RegistrationStateSuccess value) success,
    required TResult Function(RegistrationStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegistrationStateLoading implements RegistrationState {
  const factory RegistrationStateLoading() = _$RegistrationStateLoading;
}

/// @nodoc
abstract class _$$RegistrationStateSuccessCopyWith<$Res> {
  factory _$$RegistrationStateSuccessCopyWith(_$RegistrationStateSuccess value,
          $Res Function(_$RegistrationStateSuccess) then) =
      __$$RegistrationStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationStateSuccessCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements _$$RegistrationStateSuccessCopyWith<$Res> {
  __$$RegistrationStateSuccessCopyWithImpl(_$RegistrationStateSuccess _value,
      $Res Function(_$RegistrationStateSuccess) _then)
      : super(_value, (v) => _then(v as _$RegistrationStateSuccess));

  @override
  _$RegistrationStateSuccess get _value =>
      super._value as _$RegistrationStateSuccess;
}

/// @nodoc

class _$RegistrationStateSuccess implements RegistrationStateSuccess {
  const _$RegistrationStateSuccess();

  @override
  String toString() {
    return 'RegistrationState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationStateInitial value) initial,
    required TResult Function(RegistrationStateLoading value) loading,
    required TResult Function(RegistrationStateSuccess value) success,
    required TResult Function(RegistrationStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegistrationStateSuccess implements RegistrationState {
  const factory RegistrationStateSuccess() = _$RegistrationStateSuccess;
}

/// @nodoc
abstract class _$$RegistrationStateFailureCopyWith<$Res> {
  factory _$$RegistrationStateFailureCopyWith(_$RegistrationStateFailure value,
          $Res Function(_$RegistrationStateFailure) then) =
      __$$RegistrationStateFailureCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$$RegistrationStateFailureCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements _$$RegistrationStateFailureCopyWith<$Res> {
  __$$RegistrationStateFailureCopyWithImpl(_$RegistrationStateFailure _value,
      $Res Function(_$RegistrationStateFailure) _then)
      : super(_value, (v) => _then(v as _$RegistrationStateFailure));

  @override
  _$RegistrationStateFailure get _value =>
      super._value as _$RegistrationStateFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$RegistrationStateFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$RegistrationStateFailure implements RegistrationStateFailure {
  const _$RegistrationStateFailure(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'RegistrationState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$RegistrationStateFailureCopyWith<_$RegistrationStateFailure>
      get copyWith =>
          __$$RegistrationStateFailureCopyWithImpl<_$RegistrationStateFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationStateInitial value) initial,
    required TResult Function(RegistrationStateLoading value) loading,
    required TResult Function(RegistrationStateSuccess value) success,
    required TResult Function(RegistrationStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationStateInitial value)? initial,
    TResult Function(RegistrationStateLoading value)? loading,
    TResult Function(RegistrationStateSuccess value)? success,
    TResult Function(RegistrationStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RegistrationStateFailure implements RegistrationState {
  const factory RegistrationStateFailure(final Error error) =
      _$RegistrationStateFailure;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RegistrationStateFailureCopyWith<_$RegistrationStateFailure>
      get copyWith => throw _privateConstructorUsedError;
}
