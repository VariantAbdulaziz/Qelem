// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationForm {
  UserName get userName => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationFormCopyWith<RegistrationForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationFormCopyWith<$Res> {
  factory $RegistrationFormCopyWith(
          RegistrationForm value, $Res Function(RegistrationForm) then) =
      _$RegistrationFormCopyWithImpl<$Res>;
  $Res call(
      {UserName userName,
      Password password,
      String firstName,
      String lastName});
}

/// @nodoc
class _$RegistrationFormCopyWithImpl<$Res>
    implements $RegistrationFormCopyWith<$Res> {
  _$RegistrationFormCopyWithImpl(this._value, this._then);

  final RegistrationForm _value;
  // ignore: unused_field
  final $Res Function(RegistrationForm) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
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
abstract class _$$_RegisterFormCopyWith<$Res>
    implements $RegistrationFormCopyWith<$Res> {
  factory _$$_RegisterFormCopyWith(
          _$_RegisterForm value, $Res Function(_$_RegisterForm) then) =
      __$$_RegisterFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserName userName,
      Password password,
      String firstName,
      String lastName});
}

/// @nodoc
class __$$_RegisterFormCopyWithImpl<$Res>
    extends _$RegistrationFormCopyWithImpl<$Res>
    implements _$$_RegisterFormCopyWith<$Res> {
  __$$_RegisterFormCopyWithImpl(
      _$_RegisterForm _value, $Res Function(_$_RegisterForm) _then)
      : super(_value, (v) => _then(v as _$_RegisterForm));

  @override
  _$_RegisterForm get _value => super._value as _$_RegisterForm;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$_RegisterForm(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
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

class _$_RegisterForm implements _RegisterForm {
  const _$_RegisterForm(
      {required this.userName,
      required this.password,
      required this.firstName,
      required this.lastName});

  @override
  final UserName userName;
  @override
  final Password password;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'RegistrationForm(userName: $userName, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterForm &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterFormCopyWith<_$_RegisterForm> get copyWith =>
      __$$_RegisterFormCopyWithImpl<_$_RegisterForm>(this, _$identity);
}

abstract class _RegisterForm implements RegistrationForm {
  const factory _RegisterForm(
      {required final UserName userName,
      required final Password password,
      required final String firstName,
      required final String lastName}) = _$_RegisterForm;

  @override
  UserName get userName => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFormCopyWith<_$_RegisterForm> get copyWith =>
      throw _privateConstructorUsedError;
}
