// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(Role userRole, User user) setUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(Role userRole, User user)? setUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(Role userRole, User user)? setUserRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsersUsersEvent value) loadUsers,
    required TResult Function(SetUserRoleUsersEvent value) setUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUsersUsersEvent value)? loadUsers,
    TResult Function(SetUserRoleUsersEvent value)? setUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsersUsersEvent value)? loadUsers,
    TResult Function(SetUserRoleUsersEvent value)? setUserRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res> implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  final UsersEvent _value;
  // ignore: unused_field
  final $Res Function(UsersEvent) _then;
}

/// @nodoc
abstract class _$$LoadUsersUsersEventCopyWith<$Res> {
  factory _$$LoadUsersUsersEventCopyWith(_$LoadUsersUsersEvent value,
          $Res Function(_$LoadUsersUsersEvent) then) =
      __$$LoadUsersUsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUsersUsersEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res>
    implements _$$LoadUsersUsersEventCopyWith<$Res> {
  __$$LoadUsersUsersEventCopyWithImpl(
      _$LoadUsersUsersEvent _value, $Res Function(_$LoadUsersUsersEvent) _then)
      : super(_value, (v) => _then(v as _$LoadUsersUsersEvent));

  @override
  _$LoadUsersUsersEvent get _value => super._value as _$LoadUsersUsersEvent;
}

/// @nodoc

class _$LoadUsersUsersEvent extends LoadUsersUsersEvent {
  _$LoadUsersUsersEvent() : super._();

  @override
  String toString() {
    return 'UsersEvent.loadUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUsersUsersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(Role userRole, User user) setUserRole,
  }) {
    return loadUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(Role userRole, User user)? setUserRole,
  }) {
    return loadUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(Role userRole, User user)? setUserRole,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsersUsersEvent value) loadUsers,
    required TResult Function(SetUserRoleUsersEvent value) setUserRole,
  }) {
    return loadUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUsersUsersEvent value)? loadUsers,
    TResult Function(SetUserRoleUsersEvent value)? setUserRole,
  }) {
    return loadUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsersUsersEvent value)? loadUsers,
    TResult Function(SetUserRoleUsersEvent value)? setUserRole,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(this);
    }
    return orElse();
  }
}

abstract class LoadUsersUsersEvent extends UsersEvent {
  factory LoadUsersUsersEvent() = _$LoadUsersUsersEvent;
  LoadUsersUsersEvent._() : super._();
}

/// @nodoc
abstract class _$$SetUserRoleUsersEventCopyWith<$Res> {
  factory _$$SetUserRoleUsersEventCopyWith(_$SetUserRoleUsersEvent value,
          $Res Function(_$SetUserRoleUsersEvent) then) =
      __$$SetUserRoleUsersEventCopyWithImpl<$Res>;
  $Res call({Role userRole, User user});
}

/// @nodoc
class __$$SetUserRoleUsersEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res>
    implements _$$SetUserRoleUsersEventCopyWith<$Res> {
  __$$SetUserRoleUsersEventCopyWithImpl(_$SetUserRoleUsersEvent _value,
      $Res Function(_$SetUserRoleUsersEvent) _then)
      : super(_value, (v) => _then(v as _$SetUserRoleUsersEvent));

  @override
  _$SetUserRoleUsersEvent get _value => super._value as _$SetUserRoleUsersEvent;

  @override
  $Res call({
    Object? userRole = freezed,
    Object? user = freezed,
  }) {
    return _then(_$SetUserRoleUsersEvent(
      userRole == freezed
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as Role,
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SetUserRoleUsersEvent extends SetUserRoleUsersEvent {
  _$SetUserRoleUsersEvent(this.userRole, this.user) : super._();

  @override
  final Role userRole;
  @override
  final User user;

  @override
  String toString() {
    return 'UsersEvent.setUserRole(userRole: $userRole, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserRoleUsersEvent &&
            const DeepCollectionEquality().equals(other.userRole, userRole) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userRole),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$SetUserRoleUsersEventCopyWith<_$SetUserRoleUsersEvent> get copyWith =>
      __$$SetUserRoleUsersEventCopyWithImpl<_$SetUserRoleUsersEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(Role userRole, User user) setUserRole,
  }) {
    return setUserRole(userRole, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(Role userRole, User user)? setUserRole,
  }) {
    return setUserRole?.call(userRole, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(Role userRole, User user)? setUserRole,
    required TResult orElse(),
  }) {
    if (setUserRole != null) {
      return setUserRole(userRole, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsersUsersEvent value) loadUsers,
    required TResult Function(SetUserRoleUsersEvent value) setUserRole,
  }) {
    return setUserRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUsersUsersEvent value)? loadUsers,
    TResult Function(SetUserRoleUsersEvent value)? setUserRole,
  }) {
    return setUserRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsersUsersEvent value)? loadUsers,
    TResult Function(SetUserRoleUsersEvent value)? setUserRole,
    required TResult orElse(),
  }) {
    if (setUserRole != null) {
      return setUserRole(this);
    }
    return orElse();
  }
}

abstract class SetUserRoleUsersEvent extends UsersEvent {
  factory SetUserRoleUsersEvent(final Role userRole, final User user) =
      _$SetUserRoleUsersEvent;
  SetUserRoleUsersEvent._() : super._();

  Role get userRole => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SetUserRoleUsersEventCopyWith<_$SetUserRoleUsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
