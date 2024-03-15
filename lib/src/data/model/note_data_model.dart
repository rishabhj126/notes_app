import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_data_model.g.dart';
part 'note_data_model.freezed.dart';

@freezed
class NoteDataModel with _$NoteDataModel {
  const factory NoteDataModel({
    String? id,
    String? title,
    String? body,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _NotesDataModel;

  factory NoteDataModel.fromJson(Map<String, dynamic> json) =>
      _$NoteDataModelFromJson(json);
}
