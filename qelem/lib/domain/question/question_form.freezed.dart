// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionForm {
  String get topic => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionFormCopyWith<QuestionForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionFormCopyWith<$Res> {
  factory $QuestionFormCopyWith(
          QuestionForm value, $Res Function(QuestionForm) then) =
      _$QuestionFormCopyWithImpl<$Res>;
  $Res call({String topic, String content});
}

/// @nodoc
class _$QuestionFormCopyWithImpl<$Res> implements $QuestionFormCopyWith<$Res> {
  _$QuestionFormCopyWithImpl(this._value, this._then);

  final QuestionForm _value;
  // ignore: unused_field
  final $Res Function(QuestionForm) _then;

  @override
  $Res call({
    Object? topic = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionFormCopyWith<$Res>
    implements $QuestionFormCopyWith<$Res> {
  factory _$$_QuestionFormCopyWith(
          _$_QuestionForm value, $Res Function(_$_QuestionForm) then) =
      __$$_QuestionFormCopyWithImpl<$Res>;
  @override
  $Res call({String topic, String content});
}

/// @nodoc
class __$$_QuestionFormCopyWithImpl<$Res>
    extends _$QuestionFormCopyWithImpl<$Res>
    implements _$$_QuestionFormCopyWith<$Res> {
  __$$_QuestionFormCopyWithImpl(
      _$_QuestionForm _value, $Res Function(_$_QuestionForm) _then)
      : super(_value, (v) => _then(v as _$_QuestionForm));

  @override
  _$_QuestionForm get _value => super._value as _$_QuestionForm;

  @override
  $Res call({
    Object? topic = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_QuestionForm(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuestionForm implements _QuestionForm {
  const _$_QuestionForm({required this.topic, required this.content});

  @override
  final String topic;
  @override
  final String content;

  @override
  String toString() {
    return 'QuestionForm(topic: $topic, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionForm &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionFormCopyWith<_$_QuestionForm> get copyWith =>
      __$$_QuestionFormCopyWithImpl<_$_QuestionForm>(this, _$identity);
}

abstract class _QuestionForm implements QuestionForm {
  const factory _QuestionForm(
      {required final String topic,
      required final String content}) = _$_QuestionForm;

  @override
  String get topic => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionFormCopyWith<_$_QuestionForm> get copyWith =>
      throw _privateConstructorUsedError;
}
