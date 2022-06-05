// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_construction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionConstructionEvent {
  QuestionForm get form => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionForm form) postQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QuestionForm form)? postQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionForm form)? postQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionEventPost value) postQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionEventPost value)? postQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionEventPost value)? postQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionConstructionEventCopyWith<QuestionConstructionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionConstructionEventCopyWith<$Res> {
  factory $QuestionConstructionEventCopyWith(QuestionConstructionEvent value,
          $Res Function(QuestionConstructionEvent) then) =
      _$QuestionConstructionEventCopyWithImpl<$Res>;
  $Res call({QuestionForm form});

  $QuestionFormCopyWith<$Res> get form;
}

/// @nodoc
class _$QuestionConstructionEventCopyWithImpl<$Res>
    implements $QuestionConstructionEventCopyWith<$Res> {
  _$QuestionConstructionEventCopyWithImpl(this._value, this._then);

  final QuestionConstructionEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionConstructionEvent) _then;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as QuestionForm,
    ));
  }

  @override
  $QuestionFormCopyWith<$Res> get form {
    return $QuestionFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc
abstract class _$$QuestionEventPostCopyWith<$Res>
    implements $QuestionConstructionEventCopyWith<$Res> {
  factory _$$QuestionEventPostCopyWith(
          _$QuestionEventPost value, $Res Function(_$QuestionEventPost) then) =
      __$$QuestionEventPostCopyWithImpl<$Res>;
  @override
  $Res call({QuestionForm form});

  @override
  $QuestionFormCopyWith<$Res> get form;
}

/// @nodoc
class __$$QuestionEventPostCopyWithImpl<$Res>
    extends _$QuestionConstructionEventCopyWithImpl<$Res>
    implements _$$QuestionEventPostCopyWith<$Res> {
  __$$QuestionEventPostCopyWithImpl(
      _$QuestionEventPost _value, $Res Function(_$QuestionEventPost) _then)
      : super(_value, (v) => _then(v as _$QuestionEventPost));

  @override
  _$QuestionEventPost get _value => super._value as _$QuestionEventPost;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_$QuestionEventPost(
      form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as QuestionForm,
    ));
  }
}

/// @nodoc

class _$QuestionEventPost extends QuestionEventPost {
  const _$QuestionEventPost(this.form) : super._();

  @override
  final QuestionForm form;

  @override
  String toString() {
    return 'QuestionConstructionEvent.postQuestion(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEventPost &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$$QuestionEventPostCopyWith<_$QuestionEventPost> get copyWith =>
      __$$QuestionEventPostCopyWithImpl<_$QuestionEventPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionForm form) postQuestion,
  }) {
    return postQuestion(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QuestionForm form)? postQuestion,
  }) {
    return postQuestion?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionForm form)? postQuestion,
    required TResult orElse(),
  }) {
    if (postQuestion != null) {
      return postQuestion(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionEventPost value) postQuestion,
  }) {
    return postQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionEventPost value)? postQuestion,
  }) {
    return postQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionEventPost value)? postQuestion,
    required TResult orElse(),
  }) {
    if (postQuestion != null) {
      return postQuestion(this);
    }
    return orElse();
  }
}

abstract class QuestionEventPost extends QuestionConstructionEvent {
  const factory QuestionEventPost(final QuestionForm form) =
      _$QuestionEventPost;
  const QuestionEventPost._() : super._();

  @override
  QuestionForm get form => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$QuestionEventPostCopyWith<_$QuestionEventPost> get copyWith =>
      throw _privateConstructorUsedError;
}
