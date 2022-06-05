// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tag_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TagEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTags,
    required TResult Function(TagName tagName) addTag,
    required TResult Function(Tag tag) updateTag,
    required TResult Function() reloadTags,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTagsTagEvent value) loadTags,
    required TResult Function(AddTagEvent value) addTag,
    required TResult Function(UpdateTagEvent value) updateTag,
    required TResult Function(ReloadTagsTagEvent value) reloadTags,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagEventCopyWith<$Res> {
  factory $TagEventCopyWith(TagEvent value, $Res Function(TagEvent) then) =
      _$TagEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagEventCopyWithImpl<$Res> implements $TagEventCopyWith<$Res> {
  _$TagEventCopyWithImpl(this._value, this._then);

  final TagEvent _value;
  // ignore: unused_field
  final $Res Function(TagEvent) _then;
}

/// @nodoc
abstract class _$$LoadTagsTagEventCopyWith<$Res> {
  factory _$$LoadTagsTagEventCopyWith(
          _$LoadTagsTagEvent value, $Res Function(_$LoadTagsTagEvent) then) =
      __$$LoadTagsTagEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTagsTagEventCopyWithImpl<$Res>
    extends _$TagEventCopyWithImpl<$Res>
    implements _$$LoadTagsTagEventCopyWith<$Res> {
  __$$LoadTagsTagEventCopyWithImpl(
      _$LoadTagsTagEvent _value, $Res Function(_$LoadTagsTagEvent) _then)
      : super(_value, (v) => _then(v as _$LoadTagsTagEvent));

  @override
  _$LoadTagsTagEvent get _value => super._value as _$LoadTagsTagEvent;
}

/// @nodoc

class _$LoadTagsTagEvent implements LoadTagsTagEvent {
  const _$LoadTagsTagEvent();

  @override
  String toString() {
    return 'TagEvent.loadTags()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTagsTagEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTags,
    required TResult Function(TagName tagName) addTag,
    required TResult Function(Tag tag) updateTag,
    required TResult Function() reloadTags,
  }) {
    return loadTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
  }) {
    return loadTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
    required TResult orElse(),
  }) {
    if (loadTags != null) {
      return loadTags();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTagsTagEvent value) loadTags,
    required TResult Function(AddTagEvent value) addTag,
    required TResult Function(UpdateTagEvent value) updateTag,
    required TResult Function(ReloadTagsTagEvent value) reloadTags,
  }) {
    return loadTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
  }) {
    return loadTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
    required TResult orElse(),
  }) {
    if (loadTags != null) {
      return loadTags(this);
    }
    return orElse();
  }
}

abstract class LoadTagsTagEvent implements TagEvent {
  const factory LoadTagsTagEvent() = _$LoadTagsTagEvent;
}

/// @nodoc
abstract class _$$AddTagEventCopyWith<$Res> {
  factory _$$AddTagEventCopyWith(
          _$AddTagEvent value, $Res Function(_$AddTagEvent) then) =
      __$$AddTagEventCopyWithImpl<$Res>;
  $Res call({TagName tagName});
}

/// @nodoc
class __$$AddTagEventCopyWithImpl<$Res> extends _$TagEventCopyWithImpl<$Res>
    implements _$$AddTagEventCopyWith<$Res> {
  __$$AddTagEventCopyWithImpl(
      _$AddTagEvent _value, $Res Function(_$AddTagEvent) _then)
      : super(_value, (v) => _then(v as _$AddTagEvent));

  @override
  _$AddTagEvent get _value => super._value as _$AddTagEvent;

  @override
  $Res call({
    Object? tagName = freezed,
  }) {
    return _then(_$AddTagEvent(
      tagName == freezed
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as TagName,
    ));
  }
}

/// @nodoc

class _$AddTagEvent implements AddTagEvent {
  const _$AddTagEvent(this.tagName);

  @override
  final TagName tagName;

  @override
  String toString() {
    return 'TagEvent.addTag(tagName: $tagName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTagEvent &&
            const DeepCollectionEquality().equals(other.tagName, tagName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tagName));

  @JsonKey(ignore: true)
  @override
  _$$AddTagEventCopyWith<_$AddTagEvent> get copyWith =>
      __$$AddTagEventCopyWithImpl<_$AddTagEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTags,
    required TResult Function(TagName tagName) addTag,
    required TResult Function(Tag tag) updateTag,
    required TResult Function() reloadTags,
  }) {
    return addTag(tagName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
  }) {
    return addTag?.call(tagName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(tagName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTagsTagEvent value) loadTags,
    required TResult Function(AddTagEvent value) addTag,
    required TResult Function(UpdateTagEvent value) updateTag,
    required TResult Function(ReloadTagsTagEvent value) reloadTags,
  }) {
    return addTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
  }) {
    return addTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(this);
    }
    return orElse();
  }
}

abstract class AddTagEvent implements TagEvent {
  const factory AddTagEvent(final TagName tagName) = _$AddTagEvent;

  TagName get tagName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddTagEventCopyWith<_$AddTagEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTagEventCopyWith<$Res> {
  factory _$$UpdateTagEventCopyWith(
          _$UpdateTagEvent value, $Res Function(_$UpdateTagEvent) then) =
      __$$UpdateTagEventCopyWithImpl<$Res>;
  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$$UpdateTagEventCopyWithImpl<$Res> extends _$TagEventCopyWithImpl<$Res>
    implements _$$UpdateTagEventCopyWith<$Res> {
  __$$UpdateTagEventCopyWithImpl(
      _$UpdateTagEvent _value, $Res Function(_$UpdateTagEvent) _then)
      : super(_value, (v) => _then(v as _$UpdateTagEvent));

  @override
  _$UpdateTagEvent get _value => super._value as _$UpdateTagEvent;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_$UpdateTagEvent(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc

class _$UpdateTagEvent implements UpdateTagEvent {
  const _$UpdateTagEvent(this.tag);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagEvent.updateTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTagEvent &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$$UpdateTagEventCopyWith<_$UpdateTagEvent> get copyWith =>
      __$$UpdateTagEventCopyWithImpl<_$UpdateTagEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTags,
    required TResult Function(TagName tagName) addTag,
    required TResult Function(Tag tag) updateTag,
    required TResult Function() reloadTags,
  }) {
    return updateTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
  }) {
    return updateTag?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
    required TResult orElse(),
  }) {
    if (updateTag != null) {
      return updateTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTagsTagEvent value) loadTags,
    required TResult Function(AddTagEvent value) addTag,
    required TResult Function(UpdateTagEvent value) updateTag,
    required TResult Function(ReloadTagsTagEvent value) reloadTags,
  }) {
    return updateTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
  }) {
    return updateTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
    required TResult orElse(),
  }) {
    if (updateTag != null) {
      return updateTag(this);
    }
    return orElse();
  }
}

abstract class UpdateTagEvent implements TagEvent {
  const factory UpdateTagEvent(final Tag tag) = _$UpdateTagEvent;

  Tag get tag => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateTagEventCopyWith<_$UpdateTagEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadTagsTagEventCopyWith<$Res> {
  factory _$$ReloadTagsTagEventCopyWith(_$ReloadTagsTagEvent value,
          $Res Function(_$ReloadTagsTagEvent) then) =
      __$$ReloadTagsTagEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadTagsTagEventCopyWithImpl<$Res>
    extends _$TagEventCopyWithImpl<$Res>
    implements _$$ReloadTagsTagEventCopyWith<$Res> {
  __$$ReloadTagsTagEventCopyWithImpl(
      _$ReloadTagsTagEvent _value, $Res Function(_$ReloadTagsTagEvent) _then)
      : super(_value, (v) => _then(v as _$ReloadTagsTagEvent));

  @override
  _$ReloadTagsTagEvent get _value => super._value as _$ReloadTagsTagEvent;
}

/// @nodoc

class _$ReloadTagsTagEvent implements ReloadTagsTagEvent {
  const _$ReloadTagsTagEvent();

  @override
  String toString() {
    return 'TagEvent.reloadTags()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadTagsTagEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTags,
    required TResult Function(TagName tagName) addTag,
    required TResult Function(Tag tag) updateTag,
    required TResult Function() reloadTags,
  }) {
    return reloadTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
  }) {
    return reloadTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTags,
    TResult Function(TagName tagName)? addTag,
    TResult Function(Tag tag)? updateTag,
    TResult Function()? reloadTags,
    required TResult orElse(),
  }) {
    if (reloadTags != null) {
      return reloadTags();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTagsTagEvent value) loadTags,
    required TResult Function(AddTagEvent value) addTag,
    required TResult Function(UpdateTagEvent value) updateTag,
    required TResult Function(ReloadTagsTagEvent value) reloadTags,
  }) {
    return reloadTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
  }) {
    return reloadTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTagsTagEvent value)? loadTags,
    TResult Function(AddTagEvent value)? addTag,
    TResult Function(UpdateTagEvent value)? updateTag,
    TResult Function(ReloadTagsTagEvent value)? reloadTags,
    required TResult orElse(),
  }) {
    if (reloadTags != null) {
      return reloadTags(this);
    }
    return orElse();
  }
}

abstract class ReloadTagsTagEvent implements TagEvent {
  const factory ReloadTagsTagEvent() = _$ReloadTagsTagEvent;
}
