// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  RegistrationForm get form => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationForm form) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegistrationForm form)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationForm form)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationEventRegister value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationEventRegister value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationEventRegister value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationEventCopyWith<RegistrationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res>;
  $Res call({RegistrationForm form});

  $RegistrationFormCopyWith<$Res> get form;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  final RegistrationEvent _value;
  // ignore: unused_field
  final $Res Function(RegistrationEvent) _then;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as RegistrationForm,
    ));
  }

  @override
  $RegistrationFormCopyWith<$Res> get form {
    return $RegistrationFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc
abstract class _$$RegistrationEventRegisterCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$RegistrationEventRegisterCopyWith(
          _$RegistrationEventRegister value,
          $Res Function(_$RegistrationEventRegister) then) =
      __$$RegistrationEventRegisterCopyWithImpl<$Res>;
  @override
  $Res call({RegistrationForm form});

  @override
  $RegistrationFormCopyWith<$Res> get form;
}

/// @nodoc
class __$$RegistrationEventRegisterCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$$RegistrationEventRegisterCopyWith<$Res> {
  __$$RegistrationEventRegisterCopyWithImpl(_$RegistrationEventRegister _value,
      $Res Function(_$RegistrationEventRegister) _then)
      : super(_value, (v) => _then(v as _$RegistrationEventRegister));

  @override
  _$RegistrationEventRegister get _value =>
      super._value as _$RegistrationEventRegister;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_$RegistrationEventRegister(
      form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as RegistrationForm,
    ));
  }
}

/// @nodoc

class _$RegistrationEventRegister extends RegistrationEventRegister {
  const _$RegistrationEventRegister(this.form) : super._();

  @override
  final RegistrationForm form;

  @override
  String toString() {
    return 'RegistrationEvent.register(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationEventRegister &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$$RegistrationEventRegisterCopyWith<_$RegistrationEventRegister>
      get copyWith => __$$RegistrationEventRegisterCopyWithImpl<
          _$RegistrationEventRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationForm form) register,
  }) {
    return register(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegistrationForm form)? register,
  }) {
    return register?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationForm form)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationEventRegister value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationEventRegister value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationEventRegister value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegistrationEventRegister extends RegistrationEvent {
  const factory RegistrationEventRegister(final RegistrationForm form) =
      _$RegistrationEventRegister;
  const RegistrationEventRegister._() : super._();

  @override
  RegistrationForm get form => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationEventRegisterCopyWith<_$RegistrationEventRegister>
      get copyWith => throw _privateConstructorUsedError;
}
