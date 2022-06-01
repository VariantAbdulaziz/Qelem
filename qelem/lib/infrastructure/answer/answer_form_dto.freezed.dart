// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerFormDto _$AnswerFormDtoFromJson(Map<String, dynamic> json) {
  return _AnswerFormDto.fromJson(json);
}

/// @nodoc
mixin _$AnswerFormDto {
  int get questionId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerFormDtoCopyWith<AnswerFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerFormDtoCopyWith<$Res> {
  factory $AnswerFormDtoCopyWith(
          AnswerFormDto value, $Res Function(AnswerFormDto) then) =
      _$AnswerFormDtoCopyWithImpl<$Res>;
  $Res call({int questionId, String content});
}

/// @nodoc
class _$AnswerFormDtoCopyWithImpl<$Res>
    implements $AnswerFormDtoCopyWith<$Res> {
  _$AnswerFormDtoCopyWithImpl(this._value, this._then);

  final AnswerFormDto _value;
  // ignore: unused_field
  final $Res Function(AnswerFormDto) _then;

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
abstract class _$$_AnswerFormDtoCopyWith<$Res>
    implements $AnswerFormDtoCopyWith<$Res> {
  factory _$$_AnswerFormDtoCopyWith(
          _$_AnswerFormDto value, $Res Function(_$_AnswerFormDto) then) =
      __$$_AnswerFormDtoCopyWithImpl<$Res>;
  @override
  $Res call({int questionId, String content});
}

/// @nodoc
class __$$_AnswerFormDtoCopyWithImpl<$Res>
    extends _$AnswerFormDtoCopyWithImpl<$Res>
    implements _$$_AnswerFormDtoCopyWith<$Res> {
  __$$_AnswerFormDtoCopyWithImpl(
      _$_AnswerFormDto _value, $Res Function(_$_AnswerFormDto) _then)
      : super(_value, (v) => _then(v as _$_AnswerFormDto));

  @override
  _$_AnswerFormDto get _value => super._value as _$_AnswerFormDto;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_AnswerFormDto(
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
class _$_AnswerFormDto with DiagnosticableTreeMixin implements _AnswerFormDto {
  const _$_AnswerFormDto({required this.questionId, required this.content});

  factory _$_AnswerFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFormDtoFromJson(json);

  @override
  final int questionId;
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnswerFormDto(questionId: $questionId, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnswerFormDto'))
      ..add(DiagnosticsProperty('questionId', questionId))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerFormDto &&
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
  _$$_AnswerFormDtoCopyWith<_$_AnswerFormDto> get copyWith =>
      __$$_AnswerFormDtoCopyWithImpl<_$_AnswerFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerFormDtoToJson(this);
  }
}

abstract class _AnswerFormDto implements AnswerFormDto {
  const factory _AnswerFormDto(
      {required final int questionId,
      required final String content}) = _$_AnswerFormDto;

  factory _AnswerFormDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerFormDto.fromJson;

  @override
  int get questionId => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerFormDtoCopyWith<_$_AnswerFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
