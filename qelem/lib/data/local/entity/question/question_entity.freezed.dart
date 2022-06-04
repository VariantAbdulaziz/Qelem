// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionEntity _$QuestionEntityFromJson(Map<String, dynamic> json) {
  return _QuestionEntity.fromJson(json);
}

/// @nodoc
mixin _$QuestionEntity {
  int get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get authorId => throw _privateConstructorUsedError;
  int get upVotes => throw _privateConstructorUsedError;
  int get downVotes => throw _privateConstructorUsedError;
  int get userVote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionEntityCopyWith<QuestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEntityCopyWith<$Res> {
  factory $QuestionEntityCopyWith(
          QuestionEntity value, $Res Function(QuestionEntity) then) =
      _$QuestionEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String topic,
      String content,
      int authorId,
      int upVotes,
      int downVotes,
      int userVote});
}

/// @nodoc
class _$QuestionEntityCopyWithImpl<$Res>
    implements $QuestionEntityCopyWith<$Res> {
  _$QuestionEntityCopyWithImpl(this._value, this._then);

  final QuestionEntity _value;
  // ignore: unused_field
  final $Res Function(QuestionEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? topic = freezed,
    Object? content = freezed,
    Object? authorId = freezed,
    Object? upVotes = freezed,
    Object? downVotes = freezed,
    Object? userVote = freezed,
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
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionEntityCopyWith<$Res>
    implements $QuestionEntityCopyWith<$Res> {
  factory _$$_QuestionEntityCopyWith(
          _$_QuestionEntity value, $Res Function(_$_QuestionEntity) then) =
      __$$_QuestionEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String topic,
      String content,
      int authorId,
      int upVotes,
      int downVotes,
      int userVote});
}

/// @nodoc
class __$$_QuestionEntityCopyWithImpl<$Res>
    extends _$QuestionEntityCopyWithImpl<$Res>
    implements _$$_QuestionEntityCopyWith<$Res> {
  __$$_QuestionEntityCopyWithImpl(
      _$_QuestionEntity _value, $Res Function(_$_QuestionEntity) _then)
      : super(_value, (v) => _then(v as _$_QuestionEntity));

  @override
  _$_QuestionEntity get _value => super._value as _$_QuestionEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? topic = freezed,
    Object? content = freezed,
    Object? authorId = freezed,
    Object? upVotes = freezed,
    Object? downVotes = freezed,
    Object? userVote = freezed,
  }) {
    return _then(_$_QuestionEntity(
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
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionEntity implements _QuestionEntity {
  const _$_QuestionEntity(
      {required this.id,
      required this.topic,
      required this.content,
      required this.authorId,
      required this.upVotes,
      required this.downVotes,
      required this.userVote});

  factory _$_QuestionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionEntityFromJson(json);

  @override
  final int id;
  @override
  final String topic;
  @override
  final String content;
  @override
  final int authorId;
  @override
  final int upVotes;
  @override
  final int downVotes;
  @override
  final int userVote;

  @override
  String toString() {
    return 'QuestionEntity(id: $id, topic: $topic, content: $content, authorId: $authorId, upVotes: $upVotes, downVotes: $downVotes, userVote: $userVote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality().equals(other.upVotes, upVotes) &&
            const DeepCollectionEquality().equals(other.downVotes, downVotes) &&
            const DeepCollectionEquality().equals(other.userVote, userVote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(upVotes),
      const DeepCollectionEquality().hash(downVotes),
      const DeepCollectionEquality().hash(userVote));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionEntityCopyWith<_$_QuestionEntity> get copyWith =>
      __$$_QuestionEntityCopyWithImpl<_$_QuestionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionEntityToJson(this);
  }
}

abstract class _QuestionEntity implements QuestionEntity {
  const factory _QuestionEntity(
      {required final int id,
      required final String topic,
      required final String content,
      required final int authorId,
      required final int upVotes,
      required final int downVotes,
      required final int userVote}) = _$_QuestionEntity;

  factory _QuestionEntity.fromJson(Map<String, dynamic> json) =
      _$_QuestionEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get topic => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  int get authorId => throw _privateConstructorUsedError;
  @override
  int get upVotes => throw _privateConstructorUsedError;
  @override
  int get downVotes => throw _privateConstructorUsedError;
  @override
  int get userVote => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionEntityCopyWith<_$_QuestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
