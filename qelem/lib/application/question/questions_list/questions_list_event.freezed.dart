// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questions_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionsListRequestEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionsListRequestEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionsListRequestEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsListEventCopyWith<$Res> {
  factory $QuestionsListEventCopyWith(
          QuestionsListEvent value, $Res Function(QuestionsListEvent) then) =
      _$QuestionsListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionsListEventCopyWithImpl<$Res>
    implements $QuestionsListEventCopyWith<$Res> {
  _$QuestionsListEventCopyWithImpl(this._value, this._then);

  final QuestionsListEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionsListEvent) _then;
}

/// @nodoc
abstract class _$$QuestionsListRequestEventCopyWith<$Res> {
  factory _$$QuestionsListRequestEventCopyWith(
          _$QuestionsListRequestEvent value,
          $Res Function(_$QuestionsListRequestEvent) then) =
      __$$QuestionsListRequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionsListRequestEventCopyWithImpl<$Res>
    extends _$QuestionsListEventCopyWithImpl<$Res>
    implements _$$QuestionsListRequestEventCopyWith<$Res> {
  __$$QuestionsListRequestEventCopyWithImpl(_$QuestionsListRequestEvent _value,
      $Res Function(_$QuestionsListRequestEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionsListRequestEvent));

  @override
  _$QuestionsListRequestEvent get _value =>
      super._value as _$QuestionsListRequestEvent;
}

/// @nodoc

class _$QuestionsListRequestEvent implements QuestionsListRequestEvent {
  const _$QuestionsListRequestEvent();

  @override
  String toString() {
    return 'QuestionsListEvent.request()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsListRequestEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
  }) {
    return request();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? request,
  }) {
    return request?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionsListRequestEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionsListRequestEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionsListRequestEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class QuestionsListRequestEvent implements QuestionsListEvent {
  const factory QuestionsListRequestEvent() = _$QuestionsListRequestEvent;
}
