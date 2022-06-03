// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePasswordForm _$ChangePasswordFormFromJson(Map<String, dynamic> json) {
  return _ChangePasswordForm.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordForm {
  String get username => throw _privateConstructorUsedError;
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordFormCopyWith<ChangePasswordForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordFormCopyWith<$Res> {
  factory $ChangePasswordFormCopyWith(
          ChangePasswordForm value, $Res Function(ChangePasswordForm) then) =
      _$ChangePasswordFormCopyWithImpl<$Res>;
  $Res call({String username, String oldPassword, String newPassword});
}

/// @nodoc
class _$ChangePasswordFormCopyWithImpl<$Res>
    implements $ChangePasswordFormCopyWith<$Res> {
  _$ChangePasswordFormCopyWithImpl(this._value, this._then);

  final ChangePasswordForm _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordForm) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ChangePasswordFormCopyWith<$Res>
    implements $ChangePasswordFormCopyWith<$Res> {
  factory _$$_ChangePasswordFormCopyWith(_$_ChangePasswordForm value,
          $Res Function(_$_ChangePasswordForm) then) =
      __$$_ChangePasswordFormCopyWithImpl<$Res>;
  @override
  $Res call({String username, String oldPassword, String newPassword});
}

/// @nodoc
class __$$_ChangePasswordFormCopyWithImpl<$Res>
    extends _$ChangePasswordFormCopyWithImpl<$Res>
    implements _$$_ChangePasswordFormCopyWith<$Res> {
  __$$_ChangePasswordFormCopyWithImpl(
      _$_ChangePasswordForm _value, $Res Function(_$_ChangePasswordForm) _then)
      : super(_value, (v) => _then(v as _$_ChangePasswordForm));

  @override
  _$_ChangePasswordForm get _value => super._value as _$_ChangePasswordForm;

  @override
  $Res call({
    Object? username = freezed,
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_$_ChangePasswordForm(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangePasswordForm
    with DiagnosticableTreeMixin
    implements _ChangePasswordForm {
  _$_ChangePasswordForm(
      {required this.username,
      required this.oldPassword,
      required this.newPassword});

  factory _$_ChangePasswordForm.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePasswordFormFromJson(json);

  @override
  final String username;
  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePasswordForm(username: $username, oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChangePasswordForm'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('oldPassword', oldPassword))
      ..add(DiagnosticsProperty('newPassword', newPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordForm &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$$_ChangePasswordFormCopyWith<_$_ChangePasswordForm> get copyWith =>
      __$$_ChangePasswordFormCopyWithImpl<_$_ChangePasswordForm>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePasswordFormToJson(this);
  }
}

abstract class _ChangePasswordForm implements ChangePasswordForm {
  factory _ChangePasswordForm(
      {required final String username,
      required final String oldPassword,
      required final String newPassword}) = _$_ChangePasswordForm;

  factory _ChangePasswordForm.fromJson(Map<String, dynamic> json) =
      _$_ChangePasswordForm.fromJson;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get oldPassword => throw _privateConstructorUsedError;
  @override
  String get newPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordFormCopyWith<_$_ChangePasswordForm> get copyWith =>
      throw _privateConstructorUsedError;
}
