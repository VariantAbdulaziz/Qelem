// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionDto _$QuestionDtoFromJson(Map<String, dynamic> json) {
  return _QuestionDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionDto {
  int get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  UserDto get author => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get upVotes => throw _privateConstructorUsedError;
  int get downVotes => throw _privateConstructorUsedError;
  int get userVote => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<TagDto> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDtoCopyWith<QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDtoCopyWith<$Res> {
  factory $QuestionDtoCopyWith(
          QuestionDto value, $Res Function(QuestionDto) then) =
      _$QuestionDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String topic,
      String content,
      UserDto author,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime updatedAt,
      int upVotes,
      int downVotes,
      int userVote,
      @JsonKey(name: 'tags') List<TagDto> tags});

  $UserDtoCopyWith<$Res> get author;
}

/// @nodoc
class _$QuestionDtoCopyWithImpl<$Res> implements $QuestionDtoCopyWith<$Res> {
  _$QuestionDtoCopyWithImpl(this._value, this._then);

  final QuestionDto _value;
  // ignore: unused_field
  final $Res Function(QuestionDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? topic = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? upVotes = freezed,
    Object? downVotes = freezed,
    Object? userVote = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as UserDto,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      upVotes: upVotes == freezed
          ? _value.upVotes
          : upVotes // ignore: cast_nullable_to_non_nullable
              as int,
      downVotes: downVotes == freezed
          ? _value.downVotes
          : downVotes // ignore: cast_nullable_to_non_nullable
              as int,
      userVote: userVote == freezed
          ? _value.userVote
          : userVote // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>,
    ));
  }

  @override
  $UserDtoCopyWith<$Res> get author {
    return $UserDtoCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$$_QuestionDtoCopyWith<$Res>
    implements $QuestionDtoCopyWith<$Res> {
  factory _$$_QuestionDtoCopyWith(
          _$_QuestionDto value, $Res Function(_$_QuestionDto) then) =
      __$$_QuestionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String topic,
      String content,
      UserDto author,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime updatedAt,
      int upVotes,
      int downVotes,
      int userVote,
      @JsonKey(name: 'tags') List<TagDto> tags});

  @override
  $UserDtoCopyWith<$Res> get author;
}

/// @nodoc
class __$$_QuestionDtoCopyWithImpl<$Res> extends _$QuestionDtoCopyWithImpl<$Res>
    implements _$$_QuestionDtoCopyWith<$Res> {
  __$$_QuestionDtoCopyWithImpl(
      _$_QuestionDto _value, $Res Function(_$_QuestionDto) _then)
      : super(_value, (v) => _then(v as _$_QuestionDto));

  @override
  _$_QuestionDto get _value => super._value as _$_QuestionDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? topic = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? upVotes = freezed,
    Object? downVotes = freezed,
    Object? userVote = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_QuestionDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as UserDto,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      upVotes: upVotes == freezed
          ? _value.upVotes
          : upVotes // ignore: cast_nullable_to_non_nullable
              as int,
      downVotes: downVotes == freezed
          ? _value.downVotes
          : downVotes // ignore: cast_nullable_to_non_nullable
              as int,
      userVote: userVote == freezed
          ? _value.userVote
          : userVote // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDto with DiagnosticableTreeMixin implements _QuestionDto {
  const _$_QuestionDto(
      {required this.id,
      required this.topic,
      required this.content,
      required this.author,
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() required this.updatedAt,
      required this.upVotes,
      required this.downVotes,
      required this.userVote,
      @JsonKey(name: 'tags') required final List<TagDto> tags})
      : _tags = tags;

  factory _$_QuestionDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDtoFromJson(json);

  @override
  final int id;
  @override
  final String topic;
  @override
  final String content;
  @override
  final UserDto author;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @TimestampConverter()
  final DateTime updatedAt;
  @override
  final int upVotes;
  @override
  final int downVotes;
  @override
  final int userVote;
  final List<TagDto> _tags;
  @override
  @JsonKey(name: 'tags')
  List<TagDto> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionDto(id: $id, topic: $topic, content: $content, author: $author, createdAt: $createdAt, updatedAt: $updatedAt, upVotes: $upVotes, downVotes: $downVotes, userVote: $userVote, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('topic', topic))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('upVotes', upVotes))
      ..add(DiagnosticsProperty('downVotes', downVotes))
      ..add(DiagnosticsProperty('userVote', userVote))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.upVotes, upVotes) &&
            const DeepCollectionEquality().equals(other.downVotes, downVotes) &&
            const DeepCollectionEquality().equals(other.userVote, userVote) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(upVotes),
      const DeepCollectionEquality().hash(downVotes),
      const DeepCollectionEquality().hash(userVote),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionDtoCopyWith<_$_QuestionDto> get copyWith =>
      __$$_QuestionDtoCopyWithImpl<_$_QuestionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDtoToJson(this);
  }
}

abstract class _QuestionDto implements QuestionDto {
  const factory _QuestionDto(
          {required final int id,
          required final String topic,
          required final String content,
          required final UserDto author,
          @TimestampConverter() required final DateTime createdAt,
          @TimestampConverter() required final DateTime updatedAt,
          required final int upVotes,
          required final int downVotes,
          required final int userVote,
          @JsonKey(name: 'tags') required final List<TagDto> tags}) =
      _$_QuestionDto;

  factory _QuestionDto.fromJson(Map<String, dynamic> json) =
      _$_QuestionDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get topic => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  UserDto get author => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  int get upVotes => throw _privateConstructorUsedError;
  @override
  int get downVotes => throw _privateConstructorUsedError;
  @override
  int get userVote => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tags')
  List<TagDto> get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDtoCopyWith<_$_QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
