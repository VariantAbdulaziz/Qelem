// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoteDto _$VoteDtoFromJson(Map<String, dynamic> json) {
  return _VoteDto.fromJson(json);
}

/// @nodoc
mixin _$VoteDto {
  int get vote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoteDtoCopyWith<VoteDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteDtoCopyWith<$Res> {
  factory $VoteDtoCopyWith(VoteDto value, $Res Function(VoteDto) then) =
      _$VoteDtoCopyWithImpl<$Res>;
  $Res call({int vote});
}

/// @nodoc
class _$VoteDtoCopyWithImpl<$Res> implements $VoteDtoCopyWith<$Res> {
  _$VoteDtoCopyWithImpl(this._value, this._then);

  final VoteDto _value;
  // ignore: unused_field
  final $Res Function(VoteDto) _then;

  @override
  $Res call({
    Object? vote = freezed,
  }) {
    return _then(_value.copyWith(
      vote: vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_VoteDtoCopyWith<$Res> implements $VoteDtoCopyWith<$Res> {
  factory _$$_VoteDtoCopyWith(
          _$_VoteDto value, $Res Function(_$_VoteDto) then) =
      __$$_VoteDtoCopyWithImpl<$Res>;
  @override
  $Res call({int vote});
}

/// @nodoc
class __$$_VoteDtoCopyWithImpl<$Res> extends _$VoteDtoCopyWithImpl<$Res>
    implements _$$_VoteDtoCopyWith<$Res> {
  __$$_VoteDtoCopyWithImpl(_$_VoteDto _value, $Res Function(_$_VoteDto) _then)
      : super(_value, (v) => _then(v as _$_VoteDto));

  @override
  _$_VoteDto get _value => super._value as _$_VoteDto;

  @override
  $Res call({
    Object? vote = freezed,
  }) {
    return _then(_$_VoteDto(
      vote: vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VoteDto implements _VoteDto {
  const _$_VoteDto({required this.vote});

  factory _$_VoteDto.fromJson(Map<String, dynamic> json) =>
      _$$_VoteDtoFromJson(json);

  @override
  final int vote;

  @override
  String toString() {
    return 'VoteDto(vote: $vote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VoteDto &&
            const DeepCollectionEquality().equals(other.vote, vote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(vote));

  @JsonKey(ignore: true)
  @override
  _$$_VoteDtoCopyWith<_$_VoteDto> get copyWith =>
      __$$_VoteDtoCopyWithImpl<_$_VoteDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoteDtoToJson(this);
  }
}

abstract class _VoteDto implements VoteDto {
  const factory _VoteDto({required final int vote}) = _$_VoteDto;

  factory _VoteDto.fromJson(Map<String, dynamic> json) = _$_VoteDto.fromJson;

  @override
  int get vote => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VoteDtoCopyWith<_$_VoteDto> get copyWith =>
      throw _privateConstructorUsedError;
}
