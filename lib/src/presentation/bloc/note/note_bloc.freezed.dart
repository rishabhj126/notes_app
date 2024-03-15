// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String body) addNote,
    required TResult Function(NoteDataModel note) updateNote,
    required TResult Function(String noteId) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String body)? addNote,
    TResult? Function(NoteDataModel note)? updateNote,
    TResult? Function(String noteId)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String body)? addNote,
    TResult Function(NoteDataModel note)? updateNote,
    TResult Function(String noteId)? deleteNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNote value)? addNote,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res, NoteEvent>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res, $Val extends NoteEvent>
    implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'NoteEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String body) addNote,
    required TResult Function(NoteDataModel note) updateNote,
    required TResult Function(String noteId) deleteNote,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String body)? addNote,
    TResult? Function(NoteDataModel note)? updateNote,
    TResult? Function(String noteId)? deleteNote,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String body)? addNote,
    TResult Function(NoteDataModel note)? updateNote,
    TResult Function(String noteId)? deleteNote,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNote value)? addNote,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NoteEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddNoteImplCopyWith<$Res> {
  factory _$$AddNoteImplCopyWith(
          _$AddNoteImpl value, $Res Function(_$AddNoteImpl) then) =
      __$$AddNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class __$$AddNoteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$AddNoteImpl>
    implements _$$AddNoteImplCopyWith<$Res> {
  __$$AddNoteImplCopyWithImpl(
      _$AddNoteImpl _value, $Res Function(_$AddNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$AddNoteImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNoteImpl implements _AddNote {
  const _$AddNoteImpl({required this.title, required this.body});

  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'NoteEvent.addNote(title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNoteImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteImplCopyWith<_$AddNoteImpl> get copyWith =>
      __$$AddNoteImplCopyWithImpl<_$AddNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String body) addNote,
    required TResult Function(NoteDataModel note) updateNote,
    required TResult Function(String noteId) deleteNote,
  }) {
    return addNote(title, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String body)? addNote,
    TResult? Function(NoteDataModel note)? updateNote,
    TResult? Function(String noteId)? deleteNote,
  }) {
    return addNote?.call(title, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String body)? addNote,
    TResult Function(NoteDataModel note)? updateNote,
    TResult Function(String noteId)? deleteNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(title, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return addNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) {
    return addNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNote value)? addNote,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(this);
    }
    return orElse();
  }
}

abstract class _AddNote implements NoteEvent {
  const factory _AddNote(
      {required final String title,
      required final String body}) = _$AddNoteImpl;

  String get title;
  String get body;
  @JsonKey(ignore: true)
  _$$AddNoteImplCopyWith<_$AddNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNoteImplCopyWith<$Res> {
  factory _$$UpdateNoteImplCopyWith(
          _$UpdateNoteImpl value, $Res Function(_$UpdateNoteImpl) then) =
      __$$UpdateNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteDataModel note});

  $NoteDataModelCopyWith<$Res> get note;
}

/// @nodoc
class __$$UpdateNoteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$UpdateNoteImpl>
    implements _$$UpdateNoteImplCopyWith<$Res> {
  __$$UpdateNoteImplCopyWithImpl(
      _$UpdateNoteImpl _value, $Res Function(_$UpdateNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$UpdateNoteImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteDataModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteDataModelCopyWith<$Res> get note {
    return $NoteDataModelCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$UpdateNoteImpl implements _UpdateNote {
  const _$UpdateNoteImpl({required this.note});

  @override
  final NoteDataModel note;

  @override
  String toString() {
    return 'NoteEvent.updateNote(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNoteImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNoteImplCopyWith<_$UpdateNoteImpl> get copyWith =>
      __$$UpdateNoteImplCopyWithImpl<_$UpdateNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String body) addNote,
    required TResult Function(NoteDataModel note) updateNote,
    required TResult Function(String noteId) deleteNote,
  }) {
    return updateNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String body)? addNote,
    TResult? Function(NoteDataModel note)? updateNote,
    TResult? Function(String noteId)? deleteNote,
  }) {
    return updateNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String body)? addNote,
    TResult Function(NoteDataModel note)? updateNote,
    TResult Function(String noteId)? deleteNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return updateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) {
    return updateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNote value)? addNote,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(this);
    }
    return orElse();
  }
}

abstract class _UpdateNote implements NoteEvent {
  const factory _UpdateNote({required final NoteDataModel note}) =
      _$UpdateNoteImpl;

  NoteDataModel get note;
  @JsonKey(ignore: true)
  _$$UpdateNoteImplCopyWith<_$UpdateNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNoteImplCopyWith<$Res> {
  factory _$$DeleteNoteImplCopyWith(
          _$DeleteNoteImpl value, $Res Function(_$DeleteNoteImpl) then) =
      __$$DeleteNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String noteId});
}

/// @nodoc
class __$$DeleteNoteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$DeleteNoteImpl>
    implements _$$DeleteNoteImplCopyWith<$Res> {
  __$$DeleteNoteImplCopyWithImpl(
      _$DeleteNoteImpl _value, $Res Function(_$DeleteNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
  }) {
    return _then(_$DeleteNoteImpl(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteNoteImpl implements _DeleteNote {
  const _$DeleteNoteImpl({required this.noteId});

  @override
  final String noteId;

  @override
  String toString() {
    return 'NoteEvent.deleteNote(noteId: $noteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNoteImpl &&
            (identical(other.noteId, noteId) || other.noteId == noteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      __$$DeleteNoteImplCopyWithImpl<_$DeleteNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String body) addNote,
    required TResult Function(NoteDataModel note) updateNote,
    required TResult Function(String noteId) deleteNote,
  }) {
    return deleteNote(noteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String body)? addNote,
    TResult? Function(NoteDataModel note)? updateNote,
    TResult? Function(String noteId)? deleteNote,
  }) {
    return deleteNote?.call(noteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String body)? addNote,
    TResult Function(NoteDataModel note)? updateNote,
    TResult Function(String noteId)? deleteNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(noteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNote value)? addNote,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class _DeleteNote implements NoteEvent {
  const factory _DeleteNote({required final String noteId}) = _$DeleteNoteImpl;

  String get noteId;
  @JsonKey(ignore: true)
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noNotes,
    required TResult Function(List<NoteDataModel> notes) notesLoaded,
    required TResult Function() error,
    required TResult Function() noteAdded,
    required TResult Function() noteUpdated,
    required TResult Function() noteDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noNotes,
    TResult? Function(List<NoteDataModel> notes)? notesLoaded,
    TResult? Function()? error,
    TResult? Function()? noteAdded,
    TResult? Function()? noteUpdated,
    TResult? Function()? noteDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noNotes,
    TResult Function(List<NoteDataModel> notes)? notesLoaded,
    TResult Function()? error,
    TResult Function()? noteAdded,
    TResult Function()? noteUpdated,
    TResult Function()? noteDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoNotes value) noNotes,
    required TResult Function(_NotesLoaded value) notesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NoteAdded value) noteAdded,
    required TResult Function(_NoteUpdated value) noteUpdated,
    required TResult Function(_NoteDeleted value) noteDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoNotes value)? noNotes,
    TResult? Function(_NotesLoaded value)? notesLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoteAdded value)? noteAdded,
    TResult? Function(_NoteUpdated value)? noteUpdated,
    TResult? Function(_NoteDeleted value)? noteDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoNotes value)? noNotes,
    TResult Function(_NotesLoaded value)? notesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NoteAdded value)? noteAdded,
    TResult Function(_NoteUpdated value)? noteUpdated,
    TResult Function(_NoteDeleted value)? noteDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res, NoteState>;
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res, $Val extends NoteState>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NoteState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noNotes,
    required TResult Function(List<NoteDataModel> notes) notesLoaded,
    required TResult Function() error,
    required TResult Function() noteAdded,
    required TResult Function() noteUpdated,
    required TResult Function() noteDeleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noNotes,
    TResult? Function(List<NoteDataModel> notes)? notesLoaded,
    TResult? Function()? error,
    TResult? Function()? noteAdded,
    TResult? Function()? noteUpdated,
    TResult? Function()? noteDeleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noNotes,
    TResult Function(List<NoteDataModel> notes)? notesLoaded,
    TResult Function()? error,
    TResult Function()? noteAdded,
    TResult Function()? noteUpdated,
    TResult Function()? noteDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoNotes value) noNotes,
    required TResult Function(_NotesLoaded value) notesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NoteAdded value) noteAdded,
    required TResult Function(_NoteUpdated value) noteUpdated,
    required TResult Function(_NoteDeleted value) noteDeleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoNotes value)? noNotes,
    TResult? Function(_NotesLoaded value)? notesLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoteAdded value)? noteAdded,
    TResult? Function(_NoteUpdated value)? noteUpdated,
    TResult? Function(_NoteDeleted value)? noteDeleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoNotes value)? noNotes,
    TResult Function(_NotesLoaded value)? notesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NoteAdded value)? noteAdded,
    TResult Function(_NoteUpdated value)? noteUpdated,
    TResult Function(_NoteDeleted value)? noteDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NoteState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NoteState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noNotes,
    required TResult Function(List<NoteDataModel> notes) notesLoaded,
    required TResult Function() error,
    required TResult Function() noteAdded,
    required TResult Function() noteUpdated,
    required TResult Function() noteDeleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noNotes,
    TResult? Function(List<NoteDataModel> notes)? notesLoaded,
    TResult? Function()? error,
    TResult? Function()? noteAdded,
    TResult? Function()? noteUpdated,
    TResult? Function()? noteDeleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noNotes,
    TResult Function(List<NoteDataModel> notes)? notesLoaded,
    TResult Function()? error,
    TResult Function()? noteAdded,
    TResult Function()? noteUpdated,
    TResult Function()? noteDeleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoNotes value) noNotes,
    required TResult Function(_NotesLoaded value) notesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NoteAdded value) noteAdded,
    required TResult Function(_NoteUpdated value) noteUpdated,
    required TResult Function(_NoteDeleted value) noteDeleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoNotes value)? noNotes,
    TResult? Function(_NotesLoaded value)? notesLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoteAdded value)? noteAdded,
    TResult? Function(_NoteUpdated value)? noteUpdated,
    TResult? Function(_NoteDeleted value)? noteDeleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoNotes value)? noNotes,
    TResult Function(_NotesLoaded value)? notesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NoteAdded value)? noteAdded,
    TResult Function(_NoteUpdated value)? noteUpdated,
    TResult Function(_NoteDeleted value)? noteDeleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NoteState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NoNotesImplCopyWith<$Res> {
  factory _$$NoNotesImplCopyWith(
          _$NoNotesImpl value, $Res Function(_$NoNotesImpl) then) =
      __$$NoNotesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoNotesImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoNotesImpl>
    implements _$$NoNotesImplCopyWith<$Res> {
  __$$NoNotesImplCopyWithImpl(
      _$NoNotesImpl _value, $Res Function(_$NoNotesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoNotesImpl implements _NoNotes {
  const _$NoNotesImpl();

  @override
  String toString() {
    return 'NoteState.noNotes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoNotesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noNotes,
    required TResult Function(List<NoteDataModel> notes) notesLoaded,
    required TResult Function() error,
    required TResult Function() noteAdded,
    required TResult Function() noteUpdated,
    required TResult Function() noteDeleted,
  }) {
    return noNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noNotes,
    TResult? Function(List<NoteDataModel> notes)? notesLoaded,
    TResult? Function()? error,
    TResult? Function()? noteAdded,
    TResult? Function()? noteUpdated,
    TResult? Function()? noteDeleted,
  }) {
    return noNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noNotes,
    TResult Function(List<NoteDataModel> notes)? notesLoaded,
    TResult Function()? error,
    TResult Function()? noteAdded,
    TResult Function()? noteUpdated,
    TResult Function()? noteDeleted,
    required TResult orElse(),
  }) {
    if (noNotes != null) {
      return noNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoNotes value) noNotes,
    required TResult Function(_NotesLoaded value) notesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NoteAdded value) noteAdded,
    required TResult Function(_NoteUpdated value) noteUpdated,
    required TResult Function(_NoteDeleted value) noteDeleted,
  }) {
    return noNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoNotes value)? noNotes,
    TResult? Function(_NotesLoaded value)? notesLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoteAdded value)? noteAdded,
    TResult? Function(_NoteUpdated value)? noteUpdated,
    TResult? Function(_NoteDeleted value)? noteDeleted,
  }) {
    return noNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoNotes value)? noNotes,
    TResult Function(_NotesLoaded value)? notesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NoteAdded value)? noteAdded,
    TResult Function(_NoteUpdated value)? noteUpdated,
    TResult Function(_NoteDeleted value)? noteDeleted,
    required TResult orElse(),
  }) {
    if (noNotes != null) {
      return noNotes(this);
    }
    return orElse();
  }
}

abstract class _NoNotes implements NoteState {
  const factory _NoNotes() = _$NoNotesImpl;
}

/// @nodoc
abstract class _$$NotesLoadedImplCopyWith<$Res> {
  factory _$$NotesLoadedImplCopyWith(
          _$NotesLoadedImpl value, $Res Function(_$NotesLoadedImpl) then) =
      __$$NotesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NoteDataModel> notes});
}

/// @nodoc
class __$$NotesLoadedImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NotesLoadedImpl>
    implements _$$NotesLoadedImplCopyWith<$Res> {
  __$$NotesLoadedImplCopyWithImpl(
      _$NotesLoadedImpl _value, $Res Function(_$NotesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$NotesLoadedImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteDataModel>,
    ));
  }
}

/// @nodoc

class _$NotesLoadedImpl implements _NotesLoaded {
  const _$NotesLoadedImpl({required final List<NoteDataModel> notes})
      : _notes = notes;

  final List<NoteDataModel> _notes;
  @override
  List<NoteDataModel> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'NoteState.notesLoaded(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesLoadedImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesLoadedImplCopyWith<_$NotesLoadedImpl> get copyWith =>
      __$$NotesLoadedImplCopyWithImpl<_$NotesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noNotes,
    required TResult Function(List<NoteDataModel> notes) notesLoaded,
    required TResult Function() error,
    required TResult Function() noteAdded,
    required TResult Function() noteUpdated,
    required TResult Function() noteDeleted,
  }) {
    return notesLoaded(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noNotes,
    TResult? Function(List<NoteDataModel> notes)? notesLoaded,
    TResult? Function()? error,
    TResult? Function()? noteAdded,
    TResult? Function()? noteUpdated,
    TResult? Function()? noteDeleted,
  }) {
    return notesLoaded?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noNotes,
    TResult Function(List<NoteDataModel> notes)? notesLoaded,
    TResult Function()? error,
    TResult Function()? noteAdded,
    TResult Function()? noteUpdated,
    TResult Function()? noteDeleted,
    required TResult orElse(),
  }) {
    if (notesLoaded != null) {
      return notesLoaded(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoNotes value) noNotes,
    required TResult Function(_NotesLoaded value) notesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NoteAdded value) noteAdded,
    required TResult Function(_NoteUpdated value) noteUpdated,
    required TResult Function(_NoteDeleted value) noteDeleted,
  }) {
    return notesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoNotes value)? noNotes,
    TResult? Function(_NotesLoaded value)? notesLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoteAdded value)? noteAdded,
    TResult? Function(_NoteUpdated value)? noteUpdated,
    TResult? Function(_NoteDeleted value)? noteDeleted,
  }) {
    return notesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoNotes value)? noNotes,
    TResult Function(_NotesLoaded value)? notesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NoteAdded value)? noteAdded,
    TResult Function(_NoteUpdated value)? noteUpdated,
    TResult Function(_NoteDeleted value)? noteDeleted,
    required TResult orElse(),
  }) {
    if (notesLoaded != null) {
      return notesLoaded(this);
    }
    return orElse();
  }
}

abstract class _NotesLoaded implements NoteState {
  const factory _NotesLoaded({required final List<NoteDataModel> notes}) =
      _$NotesLoadedImpl;

  List<NoteDataModel> get notes;
  @JsonKey(ignore: true)
  _$$NotesLoadedImplCopyWith<_$NotesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'NoteState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noNotes,
    required TResult Function(List<NoteDataModel> notes) notesLoaded,
    required TResult Function() error,
    required TResult Function() noteAdded,
    required TResult Function() noteUpdated,
    required TResult Function() noteDeleted,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noNotes,
    TResult? Function(List<NoteDataModel> notes)? notesLoaded,
    TResult? Function()? error,
    TResult? Function()? noteAdded,
    TResult? Function()? noteUpdated,
    TResult? Function()? noteDeleted,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noNotes,
    TResult Function(List<NoteDataModel> notes)? notesLoaded,
    TResult Function()? error,
    TResult Function()? noteAdded,
    TResult Function()? noteUpdated,
    TResult Function()? noteDeleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoNotes value) noNotes,
    required TResult Function(_NotesLoaded value) notesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NoteAdded value) noteAdded,
    required TResult Function(_NoteUpdated value) noteUpdated,
    required TResult Function(_NoteDeleted value) noteDeleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoNotes value)? noNotes,
    TResult? Function(_NotesLoaded value)? notesLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoteAdded value)? noteAdded,
    TResult? Function(_NoteUpdated value)? noteUpdated,
    TResult? Function(_NoteDeleted value)? noteDeleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoNotes value)? noNotes,
    TResult Function(_NotesLoaded value)? notesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NoteAdded value)? noteAdded,
    TResult Function(_NoteUpdated value)? noteUpdated,
    TResult Function(_NoteDeleted value)? noteDeleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NoteState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$NoteAddedImplCopyWith<$Res> {
  factory _$$NoteAddedImplCopyWith(
          _$NoteAddedImpl value, $Res Function(_$NoteAddedImpl) then) =
      __$$NoteAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteAddedImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteAddedImpl>
    implements _$$NoteAddedImplCopyWith<$Res> {
  __$$NoteAddedImplCopyWithImpl(
      _$NoteAddedImpl _value, $Res Function(_$NoteAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteAddedImpl implements _NoteAdded {
  const _$NoteAddedImpl();

  @override
  String toString() {
    return 'NoteState.noteAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoteAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noNotes,
    required TResult Function(List<NoteDataModel> notes) notesLoaded,
    required TResult Function() error,
    required TResult Function() noteAdded,
    required TResult Function() noteUpdated,
    required TResult Function() noteDeleted,
  }) {
    return noteAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noNotes,
    TResult? Function(List<NoteDataModel> notes)? notesLoaded,
    TResult? Function()? error,
    TResult? Function()? noteAdded,
    TResult? Function()? noteUpdated,
    TResult? Function()? noteDeleted,
  }) {
    return noteAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noNotes,
    TResult Function(List<NoteDataModel> notes)? notesLoaded,
    TResult Function()? error,
    TResult Function()? noteAdded,
    TResult Function()? noteUpdated,
    TResult Function()? noteDeleted,
    required TResult orElse(),
  }) {
    if (noteAdded != null) {
      return noteAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoNotes value) noNotes,
    required TResult Function(_NotesLoaded value) notesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NoteAdded value) noteAdded,
    required TResult Function(_NoteUpdated value) noteUpdated,
    required TResult Function(_NoteDeleted value) noteDeleted,
  }) {
    return noteAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoNotes value)? noNotes,
    TResult? Function(_NotesLoaded value)? notesLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoteAdded value)? noteAdded,
    TResult? Function(_NoteUpdated value)? noteUpdated,
    TResult? Function(_NoteDeleted value)? noteDeleted,
  }) {
    return noteAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoNotes value)? noNotes,
    TResult Function(_NotesLoaded value)? notesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NoteAdded value)? noteAdded,
    TResult Function(_NoteUpdated value)? noteUpdated,
    TResult Function(_NoteDeleted value)? noteDeleted,
    required TResult orElse(),
  }) {
    if (noteAdded != null) {
      return noteAdded(this);
    }
    return orElse();
  }
}

abstract class _NoteAdded implements NoteState {
  const factory _NoteAdded() = _$NoteAddedImpl;
}

/// @nodoc
abstract class _$$NoteUpdatedImplCopyWith<$Res> {
  factory _$$NoteUpdatedImplCopyWith(
          _$NoteUpdatedImpl value, $Res Function(_$NoteUpdatedImpl) then) =
      __$$NoteUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteUpdatedImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteUpdatedImpl>
    implements _$$NoteUpdatedImplCopyWith<$Res> {
  __$$NoteUpdatedImplCopyWithImpl(
      _$NoteUpdatedImpl _value, $Res Function(_$NoteUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteUpdatedImpl implements _NoteUpdated {
  const _$NoteUpdatedImpl();

  @override
  String toString() {
    return 'NoteState.noteUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoteUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noNotes,
    required TResult Function(List<NoteDataModel> notes) notesLoaded,
    required TResult Function() error,
    required TResult Function() noteAdded,
    required TResult Function() noteUpdated,
    required TResult Function() noteDeleted,
  }) {
    return noteUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noNotes,
    TResult? Function(List<NoteDataModel> notes)? notesLoaded,
    TResult? Function()? error,
    TResult? Function()? noteAdded,
    TResult? Function()? noteUpdated,
    TResult? Function()? noteDeleted,
  }) {
    return noteUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noNotes,
    TResult Function(List<NoteDataModel> notes)? notesLoaded,
    TResult Function()? error,
    TResult Function()? noteAdded,
    TResult Function()? noteUpdated,
    TResult Function()? noteDeleted,
    required TResult orElse(),
  }) {
    if (noteUpdated != null) {
      return noteUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoNotes value) noNotes,
    required TResult Function(_NotesLoaded value) notesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NoteAdded value) noteAdded,
    required TResult Function(_NoteUpdated value) noteUpdated,
    required TResult Function(_NoteDeleted value) noteDeleted,
  }) {
    return noteUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoNotes value)? noNotes,
    TResult? Function(_NotesLoaded value)? notesLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoteAdded value)? noteAdded,
    TResult? Function(_NoteUpdated value)? noteUpdated,
    TResult? Function(_NoteDeleted value)? noteDeleted,
  }) {
    return noteUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoNotes value)? noNotes,
    TResult Function(_NotesLoaded value)? notesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NoteAdded value)? noteAdded,
    TResult Function(_NoteUpdated value)? noteUpdated,
    TResult Function(_NoteDeleted value)? noteDeleted,
    required TResult orElse(),
  }) {
    if (noteUpdated != null) {
      return noteUpdated(this);
    }
    return orElse();
  }
}

abstract class _NoteUpdated implements NoteState {
  const factory _NoteUpdated() = _$NoteUpdatedImpl;
}

/// @nodoc
abstract class _$$NoteDeletedImplCopyWith<$Res> {
  factory _$$NoteDeletedImplCopyWith(
          _$NoteDeletedImpl value, $Res Function(_$NoteDeletedImpl) then) =
      __$$NoteDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteDeletedImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteDeletedImpl>
    implements _$$NoteDeletedImplCopyWith<$Res> {
  __$$NoteDeletedImplCopyWithImpl(
      _$NoteDeletedImpl _value, $Res Function(_$NoteDeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteDeletedImpl implements _NoteDeleted {
  const _$NoteDeletedImpl();

  @override
  String toString() {
    return 'NoteState.noteDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoteDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noNotes,
    required TResult Function(List<NoteDataModel> notes) notesLoaded,
    required TResult Function() error,
    required TResult Function() noteAdded,
    required TResult Function() noteUpdated,
    required TResult Function() noteDeleted,
  }) {
    return noteDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noNotes,
    TResult? Function(List<NoteDataModel> notes)? notesLoaded,
    TResult? Function()? error,
    TResult? Function()? noteAdded,
    TResult? Function()? noteUpdated,
    TResult? Function()? noteDeleted,
  }) {
    return noteDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noNotes,
    TResult Function(List<NoteDataModel> notes)? notesLoaded,
    TResult Function()? error,
    TResult Function()? noteAdded,
    TResult Function()? noteUpdated,
    TResult Function()? noteDeleted,
    required TResult orElse(),
  }) {
    if (noteDeleted != null) {
      return noteDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoNotes value) noNotes,
    required TResult Function(_NotesLoaded value) notesLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_NoteAdded value) noteAdded,
    required TResult Function(_NoteUpdated value) noteUpdated,
    required TResult Function(_NoteDeleted value) noteDeleted,
  }) {
    return noteDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoNotes value)? noNotes,
    TResult? Function(_NotesLoaded value)? notesLoaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_NoteAdded value)? noteAdded,
    TResult? Function(_NoteUpdated value)? noteUpdated,
    TResult? Function(_NoteDeleted value)? noteDeleted,
  }) {
    return noteDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoNotes value)? noNotes,
    TResult Function(_NotesLoaded value)? notesLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_NoteAdded value)? noteAdded,
    TResult Function(_NoteUpdated value)? noteUpdated,
    TResult Function(_NoteDeleted value)? noteDeleted,
    required TResult orElse(),
  }) {
    if (noteDeleted != null) {
      return noteDeleted(this);
    }
    return orElse();
  }
}

abstract class _NoteDeleted implements NoteState {
  const factory _NoteDeleted() = _$NoteDeletedImpl;
}
