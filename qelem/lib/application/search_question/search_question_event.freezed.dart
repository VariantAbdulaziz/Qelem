// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_question_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchQuestionEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQuestionEventSearch value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchQuestionEventSearch value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQuestionEventSearch value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchQuestionEventCopyWith<SearchQuestionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQuestionEventCopyWith<$Res> {
  factory $SearchQuestionEventCopyWith(
          SearchQuestionEvent value, $Res Function(SearchQuestionEvent) then) =
      _$SearchQuestionEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchQuestionEventCopyWithImpl<$Res>
    implements $SearchQuestionEventCopyWith<$Res> {
  _$SearchQuestionEventCopyWithImpl(this._value, this._then);

  final SearchQuestionEvent _value;
  // ignore: unused_field
  final $Res Function(SearchQuestionEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SearchQuestionEventSearchCopyWith<$Res>
    implements $SearchQuestionEventCopyWith<$Res> {
  factory _$$SearchQuestionEventSearchCopyWith(
          _$SearchQuestionEventSearch value,
          $Res Function(_$SearchQuestionEventSearch) then) =
      __$$SearchQuestionEventSearchCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$$SearchQuestionEventSearchCopyWithImpl<$Res>
    extends _$SearchQuestionEventCopyWithImpl<$Res>
    implements _$$SearchQuestionEventSearchCopyWith<$Res> {
  __$$SearchQuestionEventSearchCopyWithImpl(_$SearchQuestionEventSearch _value,
      $Res Function(_$SearchQuestionEventSearch) _then)
      : super(_value, (v) => _then(v as _$SearchQuestionEventSearch));

  @override
  _$SearchQuestionEventSearch get _value =>
      super._value as _$SearchQuestionEventSearch;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchQuestionEventSearch(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQuestionEventSearch extends SearchQuestionEventSearch {
  const _$SearchQuestionEventSearch(this.query) : super._();

  @override
  final String query;

  @override
  String toString() {
    return 'SearchQuestionEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQuestionEventSearch &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$SearchQuestionEventSearchCopyWith<_$SearchQuestionEventSearch>
      get copyWith => __$$SearchQuestionEventSearchCopyWithImpl<
          _$SearchQuestionEventSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQuestionEventSearch value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchQuestionEventSearch value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQuestionEventSearch value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchQuestionEventSearch extends SearchQuestionEvent {
  const factory SearchQuestionEventSearch(final String query) =
      _$SearchQuestionEventSearch;
  const SearchQuestionEventSearch._() : super._();

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SearchQuestionEventSearchCopyWith<_$SearchQuestionEventSearch>
      get copyWith => throw _privateConstructorUsedError;
}
