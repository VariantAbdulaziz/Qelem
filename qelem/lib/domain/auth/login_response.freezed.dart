// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginReponse {
  User get user => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginReponseCopyWith<LoginReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginReponseCopyWith<$Res> {
  factory $LoginReponseCopyWith(
          LoginReponse value, $Res Function(LoginReponse) then) =
      _$LoginReponseCopyWithImpl<$Res>;
  $Res call({User user, String jwt});
}

/// @nodoc
class _$LoginReponseCopyWithImpl<$Res> implements $LoginReponseCopyWith<$Res> {
  _$LoginReponseCopyWithImpl(this._value, this._then);

  final LoginReponse _value;
  // ignore: unused_field
  final $Res Function(LoginReponse) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? jwt = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      jwt: jwt == freezed
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginReponseCopyWith<$Res>
    implements $LoginReponseCopyWith<$Res> {
  factory _$$_LoginReponseCopyWith(
          _$_LoginReponse value, $Res Function(_$_LoginReponse) then) =
      __$$_LoginReponseCopyWithImpl<$Res>;
  @override
  $Res call({User user, String jwt});
}

/// @nodoc
class __$$_LoginReponseCopyWithImpl<$Res>
    extends _$LoginReponseCopyWithImpl<$Res>
    implements _$$_LoginReponseCopyWith<$Res> {
  __$$_LoginReponseCopyWithImpl(
      _$_LoginReponse _value, $Res Function(_$_LoginReponse) _then)
      : super(_value, (v) => _then(v as _$_LoginReponse));

  @override
  _$_LoginReponse get _value => super._value as _$_LoginReponse;

  @override
  $Res call({
    Object? user = freezed,
    Object? jwt = freezed,
  }) {
    return _then(_$_LoginReponse(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      jwt: jwt == freezed
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginReponse implements _LoginReponse {
  const _$_LoginReponse({required this.user, required this.jwt});

  @override
  final User user;
  @override
  final String jwt;

  @override
  String toString() {
    return 'LoginReponse(user: $user, jwt: $jwt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginReponse &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.jwt, jwt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(jwt));

  @JsonKey(ignore: true)
  @override
  _$$_LoginReponseCopyWith<_$_LoginReponse> get copyWith =>
      __$$_LoginReponseCopyWithImpl<_$_LoginReponse>(this, _$identity);
}

abstract class _LoginReponse implements LoginReponse {
  const factory _LoginReponse(
      {required final User user, required final String jwt}) = _$_LoginReponse;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  String get jwt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginReponseCopyWith<_$_LoginReponse> get copyWith =>
      throw _privateConstructorUsedError;
}
