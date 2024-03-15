import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes/injection.dart';
import 'package:notes/src/comman/constant.dart';
import 'package:dio/dio.dart';
import 'package:notes/src/data/model/note_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class NoteRemoteDataSource {
  Future<List<NoteDataModel>> getNotes();
  Future<NoteDataModel> addNote(NoteDataModel note);
  Future<NoteDataModel> updateNote(NoteDataModel note);
  Future<void> deleteNote(String noteId);
}

class NoteRemoteDataSourceImpl implements NoteRemoteDataSource {
  final Dio dio = Dio();
  CollectionReference<NoteDataModel> userNotes = FirebaseFirestore.instance
      .collection(
          "$USER_NOTES_COLLECTION/${sl<SharedPreferences>().getString(USER_ID)}/$NOTES_COLLECTION")
      .withConverter<NoteDataModel>(
        fromFirestore: (snapshot, _) =>
            NoteDataModel.fromJson(snapshot.data()!),
        toFirestore: (note, _) => note.toJson(),
      );

  @override
  Future<List<NoteDataModel>> getNotes() async {
    try {
      List<QueryDocumentSnapshot<NoteDataModel>> notes =
          await userNotes.get().then((snapshot) => snapshot.docs);
      return notes.map((note) => note.data()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<NoteDataModel> addNote(NoteDataModel note) async {
    try {
      final newDoc = userNotes.doc();
      final newNoteData = note.copyWith(id: newDoc.id);
      newDoc.set(newNoteData);
      return newNoteData;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<NoteDataModel> updateNote(NoteDataModel note) async {
    try {
      await userNotes.doc(note.id.toString()).update(note.toJson());
      return note;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteNote(String noteId) async {
    try {
      await userNotes.doc(noteId).delete();
      return;
    } catch (e) {
      rethrow;
    }
  }
}
