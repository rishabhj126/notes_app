// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteDataModel _$NoteDataModelFromJson(Map<String, dynamic> json) {
  return _NotesDataModel.fromJson(json);
}

/// @nodoc
mixin _$NoteDataModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDataModelCopyWith<NoteDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDataModelCopyWith<$Res> {
  factory $NoteDataModelCopyWith(
          NoteDataModel value, $Res Function(NoteDataModel) then) =
      _$NoteDataModelCopyWithImpl<$Res, NoteDataModel>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? body,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$NoteDataModelCopyWithImpl<$Res, $Val extends NoteDataModel>
    implements $NoteDataModelCopyWith<$Res> {
  _$NoteDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotesDataModelImplCopyWith<$Res>
    implements $NoteDataModelCopyWith<$Res> {
  factory _$$NotesDataModelImplCopyWith(_$NotesDataModelImpl value,
          $Res Function(_$NotesDataModelImpl) then) =
      __$$NotesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? body,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$NotesDataModelImplCopyWithImpl<$Res>
    extends _$NoteDataModelCopyWithImpl<$Res, _$NotesDataModelImpl>
    implements _$$NotesDataModelImplCopyWith<$Res> {
  __$$NotesDataModelImplCopyWithImpl(
      _$NotesDataModelImpl _value, $Res Function(_$NotesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$NotesDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotesDataModelImpl implements _NotesDataModel {
  const _$NotesDataModelImpl(
      {this.id, this.title, this.body, this.createdAt, this.updatedAt});

  factory _$NotesDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotesDataModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'NoteDataModel(id: $id, title: $title, body: $body, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesDataModelImplCopyWith<_$NotesDataModelImpl> get copyWith =>
      __$$NotesDataModelImplCopyWithImpl<_$NotesDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotesDataModelImplToJson(
      this,
    );
  }
}

abstract class _NotesDataModel implements NoteDataModel {
  const factory _NotesDataModel(
      {final String? id,
      final String? title,
      final String? body,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$NotesDataModelImpl;

  factory _NotesDataModel.fromJson(Map<String, dynamic> json) =
      _$NotesDataModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$NotesDataModelImplCopyWith<_$NotesDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
