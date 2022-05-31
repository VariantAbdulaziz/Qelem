// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) {
  return _AuthResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AuthResponseDto {
  String get jwt => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseDtoCopyWith<AuthResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseDtoCopyWith<$Res> {
  factory $AuthResponseDtoCopyWith(
          AuthResponseDto value, $Res Function(AuthResponseDto) then) =
      _$AuthResponseDtoCopyWithImpl<$Res>;
  $Res call({String jwt, UserDto user});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthResponseDtoCopyWithImpl<$Res>
    implements $AuthResponseDtoCopyWith<$Res> {
  _$AuthResponseDtoCopyWithImpl(this._value, this._then);

  final AuthResponseDto _value;
  // ignore: unused_field
  final $Res Function(AuthResponseDto) _then;

  @override
  $Res call({
    Object? jwt = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      jwt: jwt == freezed
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }

  @override
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_AuthResponseDtoCopyWith<$Res>
    implements $AuthResponseDtoCopyWith<$Res> {
  factory _$$_AuthResponseDtoCopyWith(
          _$_AuthResponseDto value, $Res Function(_$_AuthResponseDto) then) =
      __$$_AuthResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({String jwt, UserDto user});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthResponseDtoCopyWithImpl<$Res>
    extends _$AuthResponseDtoCopyWithImpl<$Res>
    implements _$$_AuthResponseDtoCopyWith<$Res> {
  __$$_AuthResponseDtoCopyWithImpl(
      _$_AuthResponseDto _value, $Res Function(_$_AuthResponseDto) _then)
      : super(_value, (v) => _then(v as _$_AuthResponseDto));

  @override
  _$_AuthResponseDto get _value => super._value as _$_AuthResponseDto;

  @override
  $Res call({
    Object? jwt = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_AuthResponseDto(
      jwt: jwt == freezed
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponseDto
    with DiagnosticableTreeMixin
    implements _AuthResponseDto {
  const _$_AuthResponseDto({required this.jwt, required this.user});

  factory _$_AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseDtoFromJson(json);

  @override
  final String jwt;
  @override
  final UserDto user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthResponseDto(jwt: $jwt, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthResponseDto'))
      ..add(DiagnosticsProperty('jwt', jwt))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponseDto &&
            const DeepCollectionEquality().equals(other.jwt, jwt) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(jwt),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_AuthResponseDtoCopyWith<_$_AuthResponseDto> get copyWith =>
      __$$_AuthResponseDtoCopyWithImpl<_$_AuthResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseDtoToJson(this);
  }
}

abstract class _AuthResponseDto implements AuthResponseDto {
  const factory _AuthResponseDto(
      {required final String jwt,
      required final UserDto user}) = _$_AuthResponseDto;

  factory _AuthResponseDto.fromJson(Map<String, dynamic> json) =
      _$_AuthResponseDto.fromJson;

  @override
  String get jwt => throw _privateConstructorUsedError;
  @override
  UserDto get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseDtoCopyWith<_$_AuthResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
