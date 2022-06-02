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
  ChangePasswordFormDto get passwordFormDto =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangePasswordFormDto passwordFormDto)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordFormDto passwordFormDto)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangePasswordFormDto passwordFormDto)? changePassword,
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
  $Res call({ChangePasswordFormDto passwordFormDto});

  $ChangePasswordFormDtoCopyWith<$Res> get passwordFormDto;
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
    Object? passwordFormDto = freezed,
  }) {
    return _then(_value.copyWith(
      passwordFormDto: passwordFormDto == freezed
          ? _value.passwordFormDto
          : passwordFormDto // ignore: cast_nullable_to_non_nullable
              as ChangePasswordFormDto,
    ));
  }

  @override
  $ChangePasswordFormDtoCopyWith<$Res> get passwordFormDto {
    return $ChangePasswordFormDtoCopyWith<$Res>(_value.passwordFormDto,
        (value) {
      return _then(_value.copyWith(passwordFormDto: value));
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
  $Res call({ChangePasswordFormDto passwordFormDto});

  @override
  $ChangePasswordFormDtoCopyWith<$Res> get passwordFormDto;
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
    Object? passwordFormDto = freezed,
  }) {
    return _then(_$ChangePasswordEventChangePassword(
      passwordFormDto == freezed
          ? _value.passwordFormDto
          : passwordFormDto // ignore: cast_nullable_to_non_nullable
              as ChangePasswordFormDto,
    ));
  }
}

/// @nodoc

class _$ChangePasswordEventChangePassword
    extends ChangePasswordEventChangePassword {
  const _$ChangePasswordEventChangePassword(this.passwordFormDto) : super._();

  @override
  final ChangePasswordFormDto passwordFormDto;

  @override
  String toString() {
    return 'ChangePasswordEvent.changePassword(passwordFormDto: $passwordFormDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordEventChangePassword &&
            const DeepCollectionEquality()
                .equals(other.passwordFormDto, passwordFormDto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordFormDto));

  @JsonKey(ignore: true)
  @override
  _$$ChangePasswordEventChangePasswordCopyWith<
          _$ChangePasswordEventChangePassword>
      get copyWith => __$$ChangePasswordEventChangePasswordCopyWithImpl<
          _$ChangePasswordEventChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangePasswordFormDto passwordFormDto)
        changePassword,
  }) {
    return changePassword(passwordFormDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordFormDto passwordFormDto)? changePassword,
  }) {
    return changePassword?.call(passwordFormDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangePasswordFormDto passwordFormDto)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(passwordFormDto);
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
          final ChangePasswordFormDto passwordFormDto) =
      _$ChangePasswordEventChangePassword;
  const ChangePasswordEventChangePassword._() : super._();

  @override
  ChangePasswordFormDto get passwordFormDto =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordEventChangePasswordCopyWith<
          _$ChangePasswordEventChangePassword>
      get copyWith => throw _privateConstructorUsedError;
}
