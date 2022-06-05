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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTags,
    required TResult Function(QuestionForm form) postQuestion,
    required TResult Function(Tag tag) toggleTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(QuestionForm form)? postQuestion,
    TResult Function(Tag tag)? toggleTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(QuestionForm form)? postQuestion,
    TResult Function(Tag tag)? toggleTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionConstructionLoadTagsEvent value) loadTags,
    required TResult Function(QuestionEventPost value) postQuestion,
    required TResult Function(QuestionEventToggleTag value) toggleTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionConstructionLoadTagsEvent value)? loadTags,
    TResult Function(QuestionEventPost value)? postQuestion,
    TResult Function(QuestionEventToggleTag value)? toggleTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionConstructionLoadTagsEvent value)? loadTags,
    TResult Function(QuestionEventPost value)? postQuestion,
    TResult Function(QuestionEventToggleTag value)? toggleTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionConstructionEventCopyWith<$Res> {
  factory $QuestionConstructionEventCopyWith(QuestionConstructionEvent value,
          $Res Function(QuestionConstructionEvent) then) =
      _$QuestionConstructionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionConstructionEventCopyWithImpl<$Res>
    implements $QuestionConstructionEventCopyWith<$Res> {
  _$QuestionConstructionEventCopyWithImpl(this._value, this._then);

  final QuestionConstructionEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionConstructionEvent) _then;
}

/// @nodoc
abstract class _$$QuestionConstructionLoadTagsEventCopyWith<$Res> {
  factory _$$QuestionConstructionLoadTagsEventCopyWith(
          _$QuestionConstructionLoadTagsEvent value,
          $Res Function(_$QuestionConstructionLoadTagsEvent) then) =
      __$$QuestionConstructionLoadTagsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionConstructionLoadTagsEventCopyWithImpl<$Res>
    extends _$QuestionConstructionEventCopyWithImpl<$Res>
    implements _$$QuestionConstructionLoadTagsEventCopyWith<$Res> {
  __$$QuestionConstructionLoadTagsEventCopyWithImpl(
      _$QuestionConstructionLoadTagsEvent _value,
      $Res Function(_$QuestionConstructionLoadTagsEvent) _then)
      : super(_value, (v) => _then(v as _$QuestionConstructionLoadTagsEvent));

  @override
  _$QuestionConstructionLoadTagsEvent get _value =>
      super._value as _$QuestionConstructionLoadTagsEvent;
}

/// @nodoc

class _$QuestionConstructionLoadTagsEvent
    extends QuestionConstructionLoadTagsEvent {
  const _$QuestionConstructionLoadTagsEvent() : super._();

  @override
  String toString() {
    return 'QuestionConstructionEvent.loadTags()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionConstructionLoadTagsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTags,
    required TResult Function(QuestionForm form) postQuestion,
    required TResult Function(Tag tag) toggleTag,
  }) {
    return loadTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(QuestionForm form)? postQuestion,
    TResult Function(Tag tag)? toggleTag,
  }) {
    return loadTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(QuestionForm form)? postQuestion,
    TResult Function(Tag tag)? toggleTag,
    required TResult orElse(),
  }) {
    if (loadTags != null) {
      return loadTags();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionConstructionLoadTagsEvent value) loadTags,
    required TResult Function(QuestionEventPost value) postQuestion,
    required TResult Function(QuestionEventToggleTag value) toggleTag,
  }) {
    return loadTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionConstructionLoadTagsEvent value)? loadTags,
    TResult Function(QuestionEventPost value)? postQuestion,
    TResult Function(QuestionEventToggleTag value)? toggleTag,
  }) {
    return loadTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionConstructionLoadTagsEvent value)? loadTags,
    TResult Function(QuestionEventPost value)? postQuestion,
    TResult Function(QuestionEventToggleTag value)? toggleTag,
    required TResult orElse(),
  }) {
    if (loadTags != null) {
      return loadTags(this);
    }
    return orElse();
  }
}

abstract class QuestionConstructionLoadTagsEvent
    extends QuestionConstructionEvent {
  const factory QuestionConstructionLoadTagsEvent() =
      _$QuestionConstructionLoadTagsEvent;
  const QuestionConstructionLoadTagsEvent._() : super._();
}

/// @nodoc
abstract class _$$QuestionEventPostCopyWith<$Res> {
  factory _$$QuestionEventPostCopyWith(
          _$QuestionEventPost value, $Res Function(_$QuestionEventPost) then) =
      __$$QuestionEventPostCopyWithImpl<$Res>;
  $Res call({QuestionForm form});

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

  @override
  $QuestionFormCopyWith<$Res> get form {
    return $QuestionFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
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
    required TResult Function() loadTags,
    required TResult Function(QuestionForm form) postQuestion,
    required TResult Function(Tag tag) toggleTag,
  }) {
    return postQuestion(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(QuestionForm form)? postQuestion,
    TResult Function(Tag tag)? toggleTag,
  }) {
    return postQuestion?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(QuestionForm form)? postQuestion,
    TResult Function(Tag tag)? toggleTag,
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
    required TResult Function(QuestionConstructionLoadTagsEvent value) loadTags,
    required TResult Function(QuestionEventPost value) postQuestion,
    required TResult Function(QuestionEventToggleTag value) toggleTag,
  }) {
    return postQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionConstructionLoadTagsEvent value)? loadTags,
    TResult Function(QuestionEventPost value)? postQuestion,
    TResult Function(QuestionEventToggleTag value)? toggleTag,
  }) {
    return postQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionConstructionLoadTagsEvent value)? loadTags,
    TResult Function(QuestionEventPost value)? postQuestion,
    TResult Function(QuestionEventToggleTag value)? toggleTag,
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

  QuestionForm get form => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionEventPostCopyWith<_$QuestionEventPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionEventToggleTagCopyWith<$Res> {
  factory _$$QuestionEventToggleTagCopyWith(_$QuestionEventToggleTag value,
          $Res Function(_$QuestionEventToggleTag) then) =
      __$$QuestionEventToggleTagCopyWithImpl<$Res>;
  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$$QuestionEventToggleTagCopyWithImpl<$Res>
    extends _$QuestionConstructionEventCopyWithImpl<$Res>
    implements _$$QuestionEventToggleTagCopyWith<$Res> {
  __$$QuestionEventToggleTagCopyWithImpl(_$QuestionEventToggleTag _value,
      $Res Function(_$QuestionEventToggleTag) _then)
      : super(_value, (v) => _then(v as _$QuestionEventToggleTag));

  @override
  _$QuestionEventToggleTag get _value =>
      super._value as _$QuestionEventToggleTag;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_$QuestionEventToggleTag(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc

class _$QuestionEventToggleTag extends QuestionEventToggleTag {
  const _$QuestionEventToggleTag(this.tag) : super._();

  @override
  final Tag tag;

  @override
  String toString() {
    return 'QuestionConstructionEvent.toggleTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEventToggleTag &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$$QuestionEventToggleTagCopyWith<_$QuestionEventToggleTag> get copyWith =>
      __$$QuestionEventToggleTagCopyWithImpl<_$QuestionEventToggleTag>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTags,
    required TResult Function(QuestionForm form) postQuestion,
    required TResult Function(Tag tag) toggleTag,
  }) {
    return toggleTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(QuestionForm form)? postQuestion,
    TResult Function(Tag tag)? toggleTag,
  }) {
    return toggleTag?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(QuestionForm form)? postQuestion,
    TResult Function(Tag tag)? toggleTag,
    required TResult orElse(),
  }) {
    if (toggleTag != null) {
      return toggleTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionConstructionLoadTagsEvent value) loadTags,
    required TResult Function(QuestionEventPost value) postQuestion,
    required TResult Function(QuestionEventToggleTag value) toggleTag,
  }) {
    return toggleTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionConstructionLoadTagsEvent value)? loadTags,
    TResult Function(QuestionEventPost value)? postQuestion,
    TResult Function(QuestionEventToggleTag value)? toggleTag,
  }) {
    return toggleTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionConstructionLoadTagsEvent value)? loadTags,
    TResult Function(QuestionEventPost value)? postQuestion,
    TResult Function(QuestionEventToggleTag value)? toggleTag,
    required TResult orElse(),
  }) {
    if (toggleTag != null) {
      return toggleTag(this);
    }
    return orElse();
  }
}

abstract class QuestionEventToggleTag extends QuestionConstructionEvent {
  const factory QuestionEventToggleTag(final Tag tag) =
      _$QuestionEventToggleTag;
  const QuestionEventToggleTag._() : super._();

  Tag get tag => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionEventToggleTagCopyWith<_$QuestionEventToggleTag> get copyWith =>
      throw _privateConstructorUsedError;
}
