// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() delteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? delteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? delteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventDeleteAccount value) delteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileEventDeleteAccount value)? delteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventDeleteAccount value)? delteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$ProfileEventDeleteAccountCopyWith<$Res> {
  factory _$$ProfileEventDeleteAccountCopyWith(
          _$ProfileEventDeleteAccount value,
          $Res Function(_$ProfileEventDeleteAccount) then) =
      __$$ProfileEventDeleteAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileEventDeleteAccountCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$ProfileEventDeleteAccountCopyWith<$Res> {
  __$$ProfileEventDeleteAccountCopyWithImpl(_$ProfileEventDeleteAccount _value,
      $Res Function(_$ProfileEventDeleteAccount) _then)
      : super(_value, (v) => _then(v as _$ProfileEventDeleteAccount));

  @override
  _$ProfileEventDeleteAccount get _value =>
      super._value as _$ProfileEventDeleteAccount;
}

/// @nodoc

class _$ProfileEventDeleteAccount implements ProfileEventDeleteAccount {
  const _$ProfileEventDeleteAccount();

  @override
  String toString() {
    return 'ProfileEvent.delteAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEventDeleteAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() delteAccount,
  }) {
    return delteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? delteAccount,
  }) {
    return delteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? delteAccount,
    required TResult orElse(),
  }) {
    if (delteAccount != null) {
      return delteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventDeleteAccount value) delteAccount,
  }) {
    return delteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileEventDeleteAccount value)? delteAccount,
  }) {
    return delteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventDeleteAccount value)? delteAccount,
    required TResult orElse(),
  }) {
    if (delteAccount != null) {
      return delteAccount(this);
    }
    return orElse();
  }
}

abstract class ProfileEventDeleteAccount implements ProfileEvent {
  const factory ProfileEventDeleteAccount() = _$ProfileEventDeleteAccount;
}
