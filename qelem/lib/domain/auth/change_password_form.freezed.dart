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

/// @nodoc
mixin _$ChangePasswordForm {
  Password get currentPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordFormCopyWith<ChangePasswordForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordFormCopyWith<$Res> {
  factory $ChangePasswordFormCopyWith(
          ChangePasswordForm value, $Res Function(ChangePasswordForm) then) =
      _$ChangePasswordFormCopyWithImpl<$Res>;
  $Res call({Password currentPassword, Password newPassword});
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
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
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
  $Res call({Password currentPassword, Password newPassword});
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
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_$_ChangePasswordForm(
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordForm
    with DiagnosticableTreeMixin
    implements _ChangePasswordForm {
  _$_ChangePasswordForm(
      {required this.currentPassword, required this.newPassword});

  @override
  final Password currentPassword;
  @override
  final Password newPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePasswordForm(currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChangePasswordForm'))
      ..add(DiagnosticsProperty('currentPassword', currentPassword))
      ..add(DiagnosticsProperty('newPassword', newPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordForm &&
            const DeepCollectionEquality()
                .equals(other.currentPassword, currentPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPassword),
      const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$$_ChangePasswordFormCopyWith<_$_ChangePasswordForm> get copyWith =>
      __$$_ChangePasswordFormCopyWithImpl<_$_ChangePasswordForm>(
          this, _$identity);
}

abstract class _ChangePasswordForm implements ChangePasswordForm {
  factory _ChangePasswordForm(
      {required final Password currentPassword,
      required final Password newPassword}) = _$_ChangePasswordForm;

  @override
  Password get currentPassword => throw _privateConstructorUsedError;
  @override
  Password get newPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordFormCopyWith<_$_ChangePasswordForm> get copyWith =>
      throw _privateConstructorUsedError;
}
