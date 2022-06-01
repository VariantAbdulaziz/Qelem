// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePasswordFormDto _$ChangePasswordFormDtoFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordFormDto.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordFormDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordFormDtoCopyWith<ChangePasswordFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordFormDtoCopyWith<$Res> {
  factory $ChangePasswordFormDtoCopyWith(ChangePasswordFormDto value,
          $Res Function(ChangePasswordFormDto) then) =
      _$ChangePasswordFormDtoCopyWithImpl<$Res>;
  $Res call(
      {String username, String password, String firstName, String lastName});
}

/// @nodoc
class _$ChangePasswordFormDtoCopyWithImpl<$Res>
    implements $ChangePasswordFormDtoCopyWith<$Res> {
  _$ChangePasswordFormDtoCopyWithImpl(this._value, this._then);

  final ChangePasswordFormDto _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordFormDto) _then;

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
abstract class _$$_ChangePasswordFormDtoCopyWith<$Res>
    implements $ChangePasswordFormDtoCopyWith<$Res> {
  factory _$$_ChangePasswordFormDtoCopyWith(_$_ChangePasswordFormDto value,
          $Res Function(_$_ChangePasswordFormDto) then) =
      __$$_ChangePasswordFormDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username, String password, String firstName, String lastName});
}

/// @nodoc
class __$$_ChangePasswordFormDtoCopyWithImpl<$Res>
    extends _$ChangePasswordFormDtoCopyWithImpl<$Res>
    implements _$$_ChangePasswordFormDtoCopyWith<$Res> {
  __$$_ChangePasswordFormDtoCopyWithImpl(_$_ChangePasswordFormDto _value,
      $Res Function(_$_ChangePasswordFormDto) _then)
      : super(_value, (v) => _then(v as _$_ChangePasswordFormDto));

  @override
  _$_ChangePasswordFormDto get _value =>
      super._value as _$_ChangePasswordFormDto;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$_ChangePasswordFormDto(
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
class _$_ChangePasswordFormDto
    with DiagnosticableTreeMixin
    implements _ChangePasswordFormDto {
  _$_ChangePasswordFormDto(
      {required this.username,
      required this.password,
      required this.firstName,
      required this.lastName});

  factory _$_ChangePasswordFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePasswordFormDtoFromJson(json);

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
    return 'ChangePasswordFormDto(username: $username, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChangePasswordFormDto'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordFormDto &&
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
  _$$_ChangePasswordFormDtoCopyWith<_$_ChangePasswordFormDto> get copyWith =>
      __$$_ChangePasswordFormDtoCopyWithImpl<_$_ChangePasswordFormDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePasswordFormDtoToJson(this);
  }
}

abstract class _ChangePasswordFormDto implements ChangePasswordFormDto {
  factory _ChangePasswordFormDto(
      {required final String username,
      required final String password,
      required final String firstName,
      required final String lastName}) = _$_ChangePasswordFormDto;

  factory _ChangePasswordFormDto.fromJson(Map<String, dynamic> json) =
      _$_ChangePasswordFormDto.fromJson;

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
  _$$_ChangePasswordFormDtoCopyWith<_$_ChangePasswordFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
