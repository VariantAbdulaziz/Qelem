// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileEvent {
  EditProfileForm get form => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileForm form) editprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EditProfileForm form)? editprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileForm form)? editprofile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileEventUpdate value) editprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileEventUpdate value)? editprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileEventUpdate value)? editprofile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileEventCopyWith<EditProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res>;
  $Res call({EditProfileForm form});
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  final EditProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileEvent) _then;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as EditProfileForm,
    ));
  }
}

/// @nodoc
abstract class _$$EditProfileEventUpdateCopyWith<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  factory _$$EditProfileEventUpdateCopyWith(_$EditProfileEventUpdate value,
          $Res Function(_$EditProfileEventUpdate) then) =
      __$$EditProfileEventUpdateCopyWithImpl<$Res>;
  @override
  $Res call({EditProfileForm form});
}

/// @nodoc
class __$$EditProfileEventUpdateCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$$EditProfileEventUpdateCopyWith<$Res> {
  __$$EditProfileEventUpdateCopyWithImpl(_$EditProfileEventUpdate _value,
      $Res Function(_$EditProfileEventUpdate) _then)
      : super(_value, (v) => _then(v as _$EditProfileEventUpdate));

  @override
  _$EditProfileEventUpdate get _value =>
      super._value as _$EditProfileEventUpdate;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_$EditProfileEventUpdate(
      form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as EditProfileForm,
    ));
  }
}

/// @nodoc

class _$EditProfileEventUpdate extends EditProfileEventUpdate {
  const _$EditProfileEventUpdate(this.form) : super._();

  @override
  final EditProfileForm form;

  @override
  String toString() {
    return 'EditProfileEvent.editprofile(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileEventUpdate &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$$EditProfileEventUpdateCopyWith<_$EditProfileEventUpdate> get copyWith =>
      __$$EditProfileEventUpdateCopyWithImpl<_$EditProfileEventUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileForm form) editprofile,
  }) {
    return editprofile(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EditProfileForm form)? editprofile,
  }) {
    return editprofile?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileForm form)? editprofile,
    required TResult orElse(),
  }) {
    if (editprofile != null) {
      return editprofile(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileEventUpdate value) editprofile,
  }) {
    return editprofile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileEventUpdate value)? editprofile,
  }) {
    return editprofile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileEventUpdate value)? editprofile,
    required TResult orElse(),
  }) {
    if (editprofile != null) {
      return editprofile(this);
    }
    return orElse();
  }
}

abstract class EditProfileEventUpdate extends EditProfileEvent {
  const factory EditProfileEventUpdate(final EditProfileForm form) =
      _$EditProfileEventUpdate;
  const EditProfileEventUpdate._() : super._();

  @override
  EditProfileForm get form => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileEventUpdateCopyWith<_$EditProfileEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
