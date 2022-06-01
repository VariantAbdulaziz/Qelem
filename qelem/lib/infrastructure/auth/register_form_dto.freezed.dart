// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterFormDto _$RegisterFormDtoFromJson(Map<String, dynamic> json) {
  return _RegisterFormDto.fromJson(json);
}

/// @nodoc
mixin _$RegisterFormDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterFormDtoCopyWith<RegisterFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormDtoCopyWith<$Res> {
  factory $RegisterFormDtoCopyWith(
          RegisterFormDto value, $Res Function(RegisterFormDto) then) =
      _$RegisterFormDtoCopyWithImpl<$Res>;
  $Res call(
      {String username, String password, String firstName, String lastName});
}

/// @nodoc
class _$RegisterFormDtoCopyWithImpl<$Res>
    implements $RegisterFormDtoCopyWith<$Res> {
  _$RegisterFormDtoCopyWithImpl(this._value, this._then);

  final RegisterFormDto _value;
  // ignore: unused_field
  final $Res Function(RegisterFormDto) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterFormDtoCopyWith<$Res>
    implements $RegisterFormDtoCopyWith<$Res> {
  factory _$$_RegisterFormDtoCopyWith(
          _$_RegisterFormDto value, $Res Function(_$_RegisterFormDto) then) =
      __$$_RegisterFormDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username, String password, String firstName, String lastName});
}

/// @nodoc
class __$$_RegisterFormDtoCopyWithImpl<$Res>
    extends _$RegisterFormDtoCopyWithImpl<$Res>
    implements _$$_RegisterFormDtoCopyWith<$Res> {
  __$$_RegisterFormDtoCopyWithImpl(
      _$_RegisterFormDto _value, $Res Function(_$_RegisterFormDto) _then)
      : super(_value, (v) => _then(v as _$_RegisterFormDto));

  @override
  _$_RegisterFormDto get _value => super._value as _$_RegisterFormDto;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$_RegisterFormDto(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterFormDto
    with DiagnosticableTreeMixin
    implements _RegisterFormDto {
  _$_RegisterFormDto(
      {required this.username,
      required this.password,
      required this.firstName,
      required this.lastName});

  factory _$_RegisterFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterFormDtoFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterFormDto(username: $username, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterFormDto'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFormDto &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterFormDtoCopyWith<_$_RegisterFormDto> get copyWith =>
      __$$_RegisterFormDtoCopyWithImpl<_$_RegisterFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterFormDtoToJson(this);
  }
}

abstract class _RegisterFormDto implements RegisterFormDto {
  factory _RegisterFormDto(
      {required final String username,
      required final String password,
      required final String firstName,
      required final String lastName}) = _$_RegisterFormDto;

  factory _RegisterFormDto.fromJson(Map<String, dynamic> json) =
      _$_RegisterFormDto.fromJson;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFormDtoCopyWith<_$_RegisterFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
