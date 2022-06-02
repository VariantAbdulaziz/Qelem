// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerForm _$AnswerFormFromJson(Map<String, dynamic> json) {
  return _AnswerForm.fromJson(json);
}

/// @nodoc
mixin _$AnswerForm {
  int get questionId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerFormCopyWith<AnswerForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerFormCopyWith<$Res> {
  factory $AnswerFormCopyWith(
          AnswerForm value, $Res Function(AnswerForm) then) =
      _$AnswerFormCopyWithImpl<$Res>;
  $Res call({int questionId, String content});
}

/// @nodoc
class _$AnswerFormCopyWithImpl<$Res> implements $AnswerFormCopyWith<$Res> {
  _$AnswerFormCopyWithImpl(this._value, this._then);

  final AnswerForm _value;
  // ignore: unused_field
  final $Res Function(AnswerForm) _then;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AnswerFormCopyWith<$Res>
    implements $AnswerFormCopyWith<$Res> {
  factory _$$_AnswerFormCopyWith(
          _$_AnswerForm value, $Res Function(_$_AnswerForm) then) =
      __$$_AnswerFormCopyWithImpl<$Res>;
  @override
  $Res call({int questionId, String content});
}

/// @nodoc
class __$$_AnswerFormCopyWithImpl<$Res> extends _$AnswerFormCopyWithImpl<$Res>
    implements _$$_AnswerFormCopyWith<$Res> {
  __$$_AnswerFormCopyWithImpl(
      _$_AnswerForm _value, $Res Function(_$_AnswerForm) _then)
      : super(_value, (v) => _then(v as _$_AnswerForm));

  @override
  _$_AnswerForm get _value => super._value as _$_AnswerForm;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_AnswerForm(
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerForm implements _AnswerForm {
  const _$_AnswerForm({required this.questionId, required this.content});

  factory _$_AnswerForm.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFormFromJson(json);

  @override
  final int questionId;
  @override
  final String content;

  @override
  String toString() {
    return 'AnswerForm(questionId: $questionId, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerForm &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questionId),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_AnswerFormCopyWith<_$_AnswerForm> get copyWith =>
      __$$_AnswerFormCopyWithImpl<_$_AnswerForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerFormToJson(this);
  }
}

abstract class _AnswerForm implements AnswerForm {
  const factory _AnswerForm(
      {required final int questionId,
      required final String content}) = _$_AnswerForm;

  factory _AnswerForm.fromJson(Map<String, dynamic> json) =
      _$_AnswerForm.fromJson;

  @override
  int get questionId => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerFormCopyWith<_$_AnswerForm> get copyWith =>
      throw _privateConstructorUsedError;
}
