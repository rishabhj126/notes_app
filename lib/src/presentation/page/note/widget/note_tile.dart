import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:notes/src/comman/routes.dart';
import 'package:notes/src/data/model/note_data_model.dart';

class NoteTile extends StatelessWidget {
  final NoteDataModel note;
  const NoteTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      tileColor: Theme.of(context).cardColor,
      title: Text(
        note.title ?? "",
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      subtitle: Text(
          "${DateFormat("dd/MM/yy").format(note.updatedAt ?? DateTime.now())}  ${note.body ?? ""}"),
      onTap: () {
        context.push(AppRoutes.VIEW_NOTE_ROUTE_PATH, extra: note.id);
      },
    );
  }
}
