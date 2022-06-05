// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordEvent {
  ChangePasswordForm get passwordForm => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangePasswordForm passwordForm) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordForm passwordForm)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangePasswordForm passwordForm)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordEventChangePassword value)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordEventChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordEventChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordEventCopyWith<ChangePasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
  $Res call({ChangePasswordForm passwordForm});

  $ChangePasswordFormCopyWith<$Res> get passwordForm;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;

  @override
  $Res call({
    Object? passwordForm = freezed,
  }) {
    return _then(_value.copyWith(
      passwordForm: passwordForm == freezed
          ? _value.passwordForm
          : passwordForm // ignore: cast_nullable_to_non_nullable
              as ChangePasswordForm,
    ));
  }

  @override
  $ChangePasswordFormCopyWith<$Res> get passwordForm {
    return $ChangePasswordFormCopyWith<$Res>(_value.passwordForm, (value) {
      return _then(_value.copyWith(passwordForm: value));
    });
  }
}

/// @nodoc
abstract class _$$ChangePasswordEventChangePasswordCopyWith<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  factory _$$ChangePasswordEventChangePasswordCopyWith(
          _$ChangePasswordEventChangePassword value,
          $Res Function(_$ChangePasswordEventChangePassword) then) =
      __$$ChangePasswordEventChangePasswordCopyWithImpl<$Res>;
  @override
  $Res call({ChangePasswordForm passwordForm});

  @override
  $ChangePasswordFormCopyWith<$Res> get passwordForm;
}

/// @nodoc
class __$$ChangePasswordEventChangePasswordCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$$ChangePasswordEventChangePasswordCopyWith<$Res> {
  __$$ChangePasswordEventChangePasswordCopyWithImpl(
      _$ChangePasswordEventChangePassword _value,
      $Res Function(_$ChangePasswordEventChangePassword) _then)
      : super(_value, (v) => _then(v as _$ChangePasswordEventChangePassword));

  @override
  _$ChangePasswordEventChangePassword get _value =>
      super._value as _$ChangePasswordEventChangePassword;

  @override
  $Res call({
    Object? passwordForm = freezed,
  }) {
    return _then(_$ChangePasswordEventChangePassword(
      passwordForm == freezed
          ? _value.passwordForm
          : passwordForm // ignore: cast_nullable_to_non_nullable
              as ChangePasswordForm,
    ));
  }
}

/// @nodoc

class _$ChangePasswordEventChangePassword
    extends ChangePasswordEventChangePassword {
  const _$ChangePasswordEventChangePassword(this.passwordForm) : super._();

  @override
  final ChangePasswordForm passwordForm;

  @override
  String toString() {
    return 'ChangePasswordEvent.changePassword(passwordForm: $passwordForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordEventChangePassword &&
            const DeepCollectionEquality()
                .equals(other.passwordForm, passwordForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordForm));

  @JsonKey(ignore: true)
  @override
  _$$ChangePasswordEventChangePasswordCopyWith<
          _$ChangePasswordEventChangePassword>
      get copyWith => __$$ChangePasswordEventChangePasswordCopyWithImpl<
          _$ChangePasswordEventChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangePasswordForm passwordForm) changePassword,
  }) {
    return changePassword(passwordForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordForm passwordForm)? changePassword,
  }) {
    return changePassword?.call(passwordForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangePasswordForm passwordForm)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(passwordForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordEventChangePassword value)
        changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordEventChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordEventChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordEventChangePassword extends ChangePasswordEvent {
  const factory ChangePasswordEventChangePassword(
          final ChangePasswordForm passwordForm) =
      _$ChangePasswordEventChangePassword;
  const ChangePasswordEventChangePassword._() : super._();

  @override
  ChangePasswordForm get passwordForm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordEventChangePasswordCopyWith<
          _$ChangePasswordEventChangePassword>
      get copyWith => throw _privateConstructorUsedError;
}
