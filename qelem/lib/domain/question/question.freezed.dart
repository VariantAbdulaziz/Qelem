// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Question {
  int get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  User get author => throw _privateConstructorUsedError;
  int get upVotes => throw _privateConstructorUsedError;
  int get downVotes => throw _privateConstructorUsedError;
  Vote get userVote => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String topic,
      String content,
      User author,
      int upVotes,
      int downVotes,
      Vote userVote,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? topic = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? upVotes = freezed,
    Object? downVotes = freezed,
    Object? userVote = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
              as User,
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
              as Vote,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String topic,
      String content,
      User author,
      int upVotes,
      int downVotes,
      Vote userVote,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, (v) => _then(v as _$_Question));

  @override
  _$_Question get _value => super._value as _$_Question;

  @override
  $Res call({
    Object? id = freezed,
    Object? topic = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? upVotes = freezed,
    Object? downVotes = freezed,
    Object? userVote = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Question(
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
              as User,
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
              as Vote,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Question implements _Question {
  const _$_Question(
      {required this.id,
      required this.topic,
      required this.content,
      required this.author,
      required this.upVotes,
      required this.downVotes,
      required this.userVote,
      required this.createdAt,
      required this.updatedAt});

  @override
  final int id;
  @override
  final String topic;
  @override
  final String content;
  @override
  final User author;
  @override
  final int upVotes;
  @override
  final int downVotes;
  @override
  final Vote userVote;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Question(id: $id, topic: $topic, content: $content, author: $author, upVotes: $upVotes, downVotes: $downVotes, userVote: $userVote, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.upVotes, upVotes) &&
            const DeepCollectionEquality().equals(other.downVotes, downVotes) &&
            const DeepCollectionEquality().equals(other.userVote, userVote) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(upVotes),
      const DeepCollectionEquality().hash(downVotes),
      const DeepCollectionEquality().hash(userVote),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);
}

abstract class _Question implements Question {
  const factory _Question(
      {required final int id,
      required final String topic,
      required final String content,
      required final User author,
      required final int upVotes,
      required final int downVotes,
      required final Vote userVote,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_Question;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get topic => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  User get author => throw _privateConstructorUsedError;
  @override
  int get upVotes => throw _privateConstructorUsedError;
  @override
  int get downVotes => throw _privateConstructorUsedError;
  @override
  Vote get userVote => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
