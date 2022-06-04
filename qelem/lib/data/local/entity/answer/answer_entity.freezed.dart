// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerEntity _$AnswerEntityFromJson(Map<String, dynamic> json) {
  return _AnswerEntity.fromJson(json);
}

/// @nodoc
mixin _$AnswerEntity {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get questionId => throw _privateConstructorUsedError;
  int get authorId => throw _privateConstructorUsedError;
  int get upVotes => throw _privateConstructorUsedError;
  int get downVotes => throw _privateConstructorUsedError;
  int get userVote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerEntityCopyWith<AnswerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerEntityCopyWith<$Res> {
  factory $AnswerEntityCopyWith(
          AnswerEntity value, $Res Function(AnswerEntity) then) =
      _$AnswerEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String content,
      int questionId,
      int authorId,
      int upVotes,
      int downVotes,
      int userVote});
}

/// @nodoc
class _$AnswerEntityCopyWithImpl<$Res> implements $AnswerEntityCopyWith<$Res> {
  _$AnswerEntityCopyWithImpl(this._value, this._then);

  final AnswerEntity _value;
  // ignore: unused_field
  final $Res Function(AnswerEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? questionId = freezed,
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
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_AnswerEntityCopyWith<$Res>
    implements $AnswerEntityCopyWith<$Res> {
  factory _$$_AnswerEntityCopyWith(
          _$_AnswerEntity value, $Res Function(_$_AnswerEntity) then) =
      __$$_AnswerEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String content,
      int questionId,
      int authorId,
      int upVotes,
      int downVotes,
      int userVote});
}

/// @nodoc
class __$$_AnswerEntityCopyWithImpl<$Res>
    extends _$AnswerEntityCopyWithImpl<$Res>
    implements _$$_AnswerEntityCopyWith<$Res> {
  __$$_AnswerEntityCopyWithImpl(
      _$_AnswerEntity _value, $Res Function(_$_AnswerEntity) _then)
      : super(_value, (v) => _then(v as _$_AnswerEntity));

  @override
  _$_AnswerEntity get _value => super._value as _$_AnswerEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? questionId = freezed,
    Object? authorId = freezed,
    Object? upVotes = freezed,
    Object? downVotes = freezed,
    Object? userVote = freezed,
  }) {
    return _then(_$_AnswerEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_AnswerEntity implements _AnswerEntity {
  const _$_AnswerEntity(
      {required this.id,
      required this.content,
      required this.questionId,
      required this.authorId,
      required this.upVotes,
      required this.downVotes,
      required this.userVote});

  factory _$_AnswerEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerEntityFromJson(json);

  @override
  final int id;
  @override
  final String content;
  @override
  final int questionId;
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
    return 'AnswerEntity(id: $id, content: $content, questionId: $questionId, authorId: $authorId, upVotes: $upVotes, downVotes: $downVotes, userVote: $userVote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
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
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(questionId),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(upVotes),
      const DeepCollectionEquality().hash(downVotes),
      const DeepCollectionEquality().hash(userVote));

  @JsonKey(ignore: true)
  @override
  _$$_AnswerEntityCopyWith<_$_AnswerEntity> get copyWith =>
      __$$_AnswerEntityCopyWithImpl<_$_AnswerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerEntityToJson(this);
  }
}

abstract class _AnswerEntity implements AnswerEntity {
  const factory _AnswerEntity(
      {required final int id,
      required final String content,
      required final int questionId,
      required final int authorId,
      required final int upVotes,
      required final int downVotes,
      required final int userVote}) = _$_AnswerEntity;

  factory _AnswerEntity.fromJson(Map<String, dynamic> json) =
      _$_AnswerEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  int get questionId => throw _privateConstructorUsedError;
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
  _$$_AnswerEntityCopyWith<_$_AnswerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
