// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String token) signedIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignedIn value) signedIn,
    required TResult Function(AuthEventSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$AuthEventSignedInCopyWith<$Res> {
  factory _$$AuthEventSignedInCopyWith(
          _$AuthEventSignedIn value, $Res Function(_$AuthEventSignedIn) then) =
      __$$AuthEventSignedInCopyWithImpl<$Res>;
  $Res call({User user, String token});
}

/// @nodoc
class __$$AuthEventSignedInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthEventSignedInCopyWith<$Res> {
  __$$AuthEventSignedInCopyWithImpl(
      _$AuthEventSignedIn _value, $Res Function(_$AuthEventSignedIn) _then)
      : super(_value, (v) => _then(v as _$AuthEventSignedIn));

  @override
  _$AuthEventSignedIn get _value => super._value as _$AuthEventSignedIn;

  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$AuthEventSignedIn(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventSignedIn implements AuthEventSignedIn {
  const _$AuthEventSignedIn(this.user, this.token);

  @override
  final User user;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.signedIn(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignedIn &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$AuthEventSignedInCopyWith<_$AuthEventSignedIn> get copyWith =>
      __$$AuthEventSignedInCopyWithImpl<_$AuthEventSignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String token) signedIn,
    required TResult Function() signOut,
  }) {
    return signedIn(user, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
  }) {
    return signedIn?.call(user, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(user, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignedIn value) signedIn,
    required TResult Function(AuthEventSignOut value) signOut,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignedIn implements AuthEvent {
  const factory AuthEventSignedIn(final User user, final String token) =
      _$AuthEventSignedIn;

  User get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthEventSignedInCopyWith<_$AuthEventSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventSignOutCopyWith<$Res> {
  factory _$$AuthEventSignOutCopyWith(
          _$AuthEventSignOut value, $Res Function(_$AuthEventSignOut) then) =
      __$$AuthEventSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventSignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthEventSignOutCopyWith<$Res> {
  __$$AuthEventSignOutCopyWithImpl(
      _$AuthEventSignOut _value, $Res Function(_$AuthEventSignOut) _then)
      : super(_value, (v) => _then(v as _$AuthEventSignOut));

  @override
  _$AuthEventSignOut get _value => super._value as _$AuthEventSignOut;
}

/// @nodoc

class _$AuthEventSignOut implements AuthEventSignOut {
  const _$AuthEventSignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String token) signedIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignedIn value) signedIn,
    required TResult Function(AuthEventSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignOut implements AuthEvent {
  const factory AuthEventSignOut() = _$AuthEventSignOut;
}
