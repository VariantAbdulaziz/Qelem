// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileDto {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePicture')
  String get profilePictureRelativeUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDtoCopyWith<ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) then) =
      _$ProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String firstName,
      String lastName,
      String role,
      @JsonKey(name: 'profilePicture') String profilePictureRelativeUrl});
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res> implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

  final ProfileDto _value;
  // ignore: unused_field
  final $Res Function(ProfileDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? role = freezed,
    Object? profilePictureRelativeUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureRelativeUrl: profilePictureRelativeUrl == freezed
          ? _value.profilePictureRelativeUrl
          : profilePictureRelativeUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileDtoCopyWith<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  factory _$$_ProfileDtoCopyWith(
          _$_ProfileDto value, $Res Function(_$_ProfileDto) then) =
      __$$_ProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String firstName,
      String lastName,
      String role,
      @JsonKey(name: 'profilePicture') String profilePictureRelativeUrl});
}

/// @nodoc
class __$$_ProfileDtoCopyWithImpl<$Res> extends _$ProfileDtoCopyWithImpl<$Res>
    implements _$$_ProfileDtoCopyWith<$Res> {
  __$$_ProfileDtoCopyWithImpl(
      _$_ProfileDto _value, $Res Function(_$_ProfileDto) _then)
      : super(_value, (v) => _then(v as _$_ProfileDto));

  @override
  _$_ProfileDto get _value => super._value as _$_ProfileDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? role = freezed,
    Object? profilePictureRelativeUrl = freezed,
  }) {
    return _then(_$_ProfileDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureRelativeUrl: profilePictureRelativeUrl == freezed
          ? _value.profilePictureRelativeUrl
          : profilePictureRelativeUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDto with DiagnosticableTreeMixin implements _ProfileDto {
  const _$_ProfileDto(
      {required this.id,
      required this.username,
      required this.firstName,
      required this.lastName,
      required this.role,
      @JsonKey(name: 'profilePicture')
          required this.profilePictureRelativeUrl});

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDtoFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String role;
  @override
  @JsonKey(name: 'profilePicture')
  final String profilePictureRelativeUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileDto(id: $id, username: $username, firstName: $firstName, lastName: $lastName, role: $role, profilePictureRelativeUrl: $profilePictureRelativeUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty(
          'profilePictureRelativeUrl', profilePictureRelativeUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(
                other.profilePictureRelativeUrl, profilePictureRelativeUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(profilePictureRelativeUrl));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileDtoCopyWith<_$_ProfileDto> get copyWith =>
      __$$_ProfileDtoCopyWithImpl<_$_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDtoToJson(this);
  }
}

abstract class _ProfileDto implements ProfileDto {
  const factory _ProfileDto(
      {required final int id,
      required final String username,
      required final String firstName,
      required final String lastName,
      required final String role,
      @JsonKey(name: 'profilePicture')
          required final String profilePictureRelativeUrl}) = _$_ProfileDto;

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get role => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'profilePicture')
  String get profilePictureRelativeUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDtoCopyWith<_$_ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
