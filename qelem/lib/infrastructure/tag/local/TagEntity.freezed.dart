// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'TagEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagEntity _$TagEntityFromJson(Map<String, dynamic> json) {
  return _TagEntity.fromJson(json);
}

/// @nodoc
mixin _$TagEntity {
  int get tagId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get questionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagEntityCopyWith<TagEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagEntityCopyWith<$Res> {
  factory $TagEntityCopyWith(TagEntity value, $Res Function(TagEntity) then) =
      _$TagEntityCopyWithImpl<$Res>;
  $Res call({int tagId, String name, int questionId});
}

/// @nodoc
class _$TagEntityCopyWithImpl<$Res> implements $TagEntityCopyWith<$Res> {
  _$TagEntityCopyWithImpl(this._value, this._then);

  final TagEntity _value;
  // ignore: unused_field
  final $Res Function(TagEntity) _then;

  @override
  $Res call({
    Object? tagId = freezed,
    Object? name = freezed,
    Object? questionId = freezed,
  }) {
    return _then(_value.copyWith(
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TagEntityCopyWith<$Res> implements $TagEntityCopyWith<$Res> {
  factory _$$_TagEntityCopyWith(
          _$_TagEntity value, $Res Function(_$_TagEntity) then) =
      __$$_TagEntityCopyWithImpl<$Res>;
  @override
  $Res call({int tagId, String name, int questionId});
}

/// @nodoc
class __$$_TagEntityCopyWithImpl<$Res> extends _$TagEntityCopyWithImpl<$Res>
    implements _$$_TagEntityCopyWith<$Res> {
  __$$_TagEntityCopyWithImpl(
      _$_TagEntity _value, $Res Function(_$_TagEntity) _then)
      : super(_value, (v) => _then(v as _$_TagEntity));

  @override
  _$_TagEntity get _value => super._value as _$_TagEntity;

  @override
  $Res call({
    Object? tagId = freezed,
    Object? name = freezed,
    Object? questionId = freezed,
  }) {
    return _then(_$_TagEntity(
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TagEntity implements _TagEntity {
  const _$_TagEntity(
      {required this.tagId, required this.name, required this.questionId});

  factory _$_TagEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TagEntityFromJson(json);

  @override
  final int tagId;
  @override
  final String name;
  @override
  final int questionId;

  @override
  String toString() {
    return 'TagEntity(tagId: $tagId, name: $name, questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagEntity &&
            const DeepCollectionEquality().equals(other.tagId, tagId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tagId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$_TagEntityCopyWith<_$_TagEntity> get copyWith =>
      __$$_TagEntityCopyWithImpl<_$_TagEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagEntityToJson(this);
  }
}

abstract class _TagEntity implements TagEntity {
  const factory _TagEntity(
      {required final int tagId,
      required final String name,
      required final int questionId}) = _$_TagEntity;

  factory _TagEntity.fromJson(Map<String, dynamic> json) =
      _$_TagEntity.fromJson;

  @override
  int get tagId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get questionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TagEntityCopyWith<_$_TagEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
