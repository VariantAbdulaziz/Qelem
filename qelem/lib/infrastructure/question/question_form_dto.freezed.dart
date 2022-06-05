// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionFormDto _$QuestionFormDtoFromJson(Map<String, dynamic> json) {
  return _QuestionFormDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionFormDto {
  String get topic => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<int> get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionFormDtoCopyWith<QuestionFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionFormDtoCopyWith<$Res> {
  factory $QuestionFormDtoCopyWith(
          QuestionFormDto value, $Res Function(QuestionFormDto) then) =
      _$QuestionFormDtoCopyWithImpl<$Res>;
  $Res call({String topic, String content, List<int> tagIds});
}

/// @nodoc
class _$QuestionFormDtoCopyWithImpl<$Res>
    implements $QuestionFormDtoCopyWith<$Res> {
  _$QuestionFormDtoCopyWithImpl(this._value, this._then);

  final QuestionFormDto _value;
  // ignore: unused_field
  final $Res Function(QuestionFormDto) _then;

  @override
  $Res call({
    Object? topic = freezed,
    Object? content = freezed,
    Object? tagIds = freezed,
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
      tagIds: tagIds == freezed
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionFormDtoCopyWith<$Res>
    implements $QuestionFormDtoCopyWith<$Res> {
  factory _$$_QuestionFormDtoCopyWith(
          _$_QuestionFormDto value, $Res Function(_$_QuestionFormDto) then) =
      __$$_QuestionFormDtoCopyWithImpl<$Res>;
  @override
  $Res call({String topic, String content, List<int> tagIds});
}

/// @nodoc
class __$$_QuestionFormDtoCopyWithImpl<$Res>
    extends _$QuestionFormDtoCopyWithImpl<$Res>
    implements _$$_QuestionFormDtoCopyWith<$Res> {
  __$$_QuestionFormDtoCopyWithImpl(
      _$_QuestionFormDto _value, $Res Function(_$_QuestionFormDto) _then)
      : super(_value, (v) => _then(v as _$_QuestionFormDto));

  @override
  _$_QuestionFormDto get _value => super._value as _$_QuestionFormDto;

  @override
  $Res call({
    Object? topic = freezed,
    Object? content = freezed,
    Object? tagIds = freezed,
  }) {
    return _then(_$_QuestionFormDto(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      tagIds: tagIds == freezed
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionFormDto
    with DiagnosticableTreeMixin
    implements _QuestionFormDto {
  const _$_QuestionFormDto(
      {required this.topic,
      required this.content,
      required final List<int> tagIds})
      : _tagIds = tagIds;

  factory _$_QuestionFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFormDtoFromJson(json);

  @override
  final String topic;
  @override
  final String content;
  final List<int> _tagIds;
  @override
  List<int> get tagIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagIds);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionFormDto(topic: $topic, content: $content, tagIds: $tagIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionFormDto'))
      ..add(DiagnosticsProperty('topic', topic))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('tagIds', tagIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionFormDto &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionFormDtoCopyWith<_$_QuestionFormDto> get copyWith =>
      __$$_QuestionFormDtoCopyWithImpl<_$_QuestionFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionFormDtoToJson(this);
  }
}

abstract class _QuestionFormDto implements QuestionFormDto {
  const factory _QuestionFormDto(
      {required final String topic,
      required final String content,
      required final List<int> tagIds}) = _$_QuestionFormDto;

  factory _QuestionFormDto.fromJson(Map<String, dynamic> json) =
      _$_QuestionFormDto.fromJson;

  @override
  String get topic => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  List<int> get tagIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionFormDtoCopyWith<_$_QuestionFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
