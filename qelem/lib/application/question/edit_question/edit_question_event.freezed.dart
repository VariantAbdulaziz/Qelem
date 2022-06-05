// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_question_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditQuestionEvent {
  QuestionForm get questionForm => throw _privateConstructorUsedError;
  int get questionId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionForm questionForm, int questionId)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QuestionForm questionForm, int questionId)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionForm questionForm, int questionId)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditQuestionEventEdit value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditQuestionEventEdit value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditQuestionEventEdit value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditQuestionEventCopyWith<EditQuestionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditQuestionEventCopyWith<$Res> {
  factory $EditQuestionEventCopyWith(
          EditQuestionEvent value, $Res Function(EditQuestionEvent) then) =
      _$EditQuestionEventCopyWithImpl<$Res>;
  $Res call({QuestionForm questionForm, int questionId});

  $QuestionFormCopyWith<$Res> get questionForm;
}

/// @nodoc
class _$EditQuestionEventCopyWithImpl<$Res>
    implements $EditQuestionEventCopyWith<$Res> {
  _$EditQuestionEventCopyWithImpl(this._value, this._then);

  final EditQuestionEvent _value;
  // ignore: unused_field
  final $Res Function(EditQuestionEvent) _then;

  @override
  $Res call({
    Object? questionForm = freezed,
    Object? questionId = freezed,
  }) {
    return _then(_value.copyWith(
      questionForm: questionForm == freezed
          ? _value.questionForm
          : questionForm // ignore: cast_nullable_to_non_nullable
              as QuestionForm,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $QuestionFormCopyWith<$Res> get questionForm {
    return $QuestionFormCopyWith<$Res>(_value.questionForm, (value) {
      return _then(_value.copyWith(questionForm: value));
    });
  }
}

/// @nodoc
abstract class _$$EditQuestionEventEditCopyWith<$Res>
    implements $EditQuestionEventCopyWith<$Res> {
  factory _$$EditQuestionEventEditCopyWith(_$EditQuestionEventEdit value,
          $Res Function(_$EditQuestionEventEdit) then) =
      __$$EditQuestionEventEditCopyWithImpl<$Res>;
  @override
  $Res call({QuestionForm questionForm, int questionId});

  @override
  $QuestionFormCopyWith<$Res> get questionForm;
}

/// @nodoc
class __$$EditQuestionEventEditCopyWithImpl<$Res>
    extends _$EditQuestionEventCopyWithImpl<$Res>
    implements _$$EditQuestionEventEditCopyWith<$Res> {
  __$$EditQuestionEventEditCopyWithImpl(_$EditQuestionEventEdit _value,
      $Res Function(_$EditQuestionEventEdit) _then)
      : super(_value, (v) => _then(v as _$EditQuestionEventEdit));

  @override
  _$EditQuestionEventEdit get _value => super._value as _$EditQuestionEventEdit;

  @override
  $Res call({
    Object? questionForm = freezed,
    Object? questionId = freezed,
  }) {
    return _then(_$EditQuestionEventEdit(
      questionForm == freezed
          ? _value.questionForm
          : questionForm // ignore: cast_nullable_to_non_nullable
              as QuestionForm,
      questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditQuestionEventEdit extends EditQuestionEventEdit {
  const _$EditQuestionEventEdit(this.questionForm, this.questionId) : super._();

  @override
  final QuestionForm questionForm;
  @override
  final int questionId;

  @override
  String toString() {
    return 'EditQuestionEvent.changePassword(questionForm: $questionForm, questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditQuestionEventEdit &&
            const DeepCollectionEquality()
                .equals(other.questionForm, questionForm) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questionForm),
      const DeepCollectionEquality().hash(questionId));

  @JsonKey(ignore: true)
  @override
  _$$EditQuestionEventEditCopyWith<_$EditQuestionEventEdit> get copyWith =>
      __$$EditQuestionEventEditCopyWithImpl<_$EditQuestionEventEdit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionForm questionForm, int questionId)
        changePassword,
  }) {
    return changePassword(questionForm, questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QuestionForm questionForm, int questionId)? changePassword,
  }) {
    return changePassword?.call(questionForm, questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionForm questionForm, int questionId)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(questionForm, questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditQuestionEventEdit value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditQuestionEventEdit value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditQuestionEventEdit value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class EditQuestionEventEdit extends EditQuestionEvent {
  const factory EditQuestionEventEdit(
          final QuestionForm questionForm, final int questionId) =
      _$EditQuestionEventEdit;
  const EditQuestionEventEdit._() : super._();

  @override
  QuestionForm get questionForm => throw _privateConstructorUsedError;
  @override
  int get questionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EditQuestionEventEditCopyWith<_$EditQuestionEventEdit> get copyWith =>
      throw _privateConstructorUsedError;
}
