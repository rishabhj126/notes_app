import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/injection.dart';
import 'package:notes/src/comman/constant.dart';
import 'package:notes/src/data/model/note_data_model.dart';
import 'package:notes/src/presentation/bloc/note/note_bloc.dart';
import 'package:notes/src/presentation/widget/custom_dialog.dart';
import 'package:notes/src/presentation/widget/custom_text_form_field.dart';
import 'package:notes/src/presentation/widget/custom_text_with_icon_button.dart';

class EditNoteScreen extends StatefulWidget {
  final String noteId;
  const EditNoteScreen({super.key, required this.noteId});

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController titleController;
  late TextEditingController bodyController;
  late NoteDataModel note;
  @override
  void initState() {
    super.initState();
    note = sl<NoteBloc>()
            .notesList
            .where((element) => element.id == widget.noteId)
            .firstOrNull ??
        NoteDataModel();

    titleController = TextEditingController(text: note.title ?? "");
    bodyController = TextEditingController(text: note.body ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Note"),
        leading: CustomTextWithIconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 12,
          ),
          label: 'Home',
          fontSize: 11,
          onTap: () {
            if (formKey.currentState?.validate() == true) {
              sl<NoteBloc>().add(NoteEvent.updateNote(
                  note: note.copyWith(
                      title: titleController.text, body: bodyController.text)));
              context.pop();
            } else {
              showConfirmationDialog(
                context,
                title: "Changes will be lost",
                primaryButtonLabel: 'Go to home',
                onPrimaryButtonTap: () {
                  context.pop();
                  context.pop();
                },
              );
            }
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.delete,
              size: 20,
            ),
            onPressed: () {
              showConfirmationDialog(
                context,
                title: "Note will be deleted forever",
                primaryButtonLabel: 'Delete',
                onPrimaryButtonTap: () {
                  sl<NoteBloc>()
                      .add(NoteEvent.deleteNote(noteId: note.id ?? ""));

                  context.pop();
                  context.pop();
                },
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.save,
              size: 20,
            ),
            onPressed: () {
              if (formKey.currentState?.validate() == true) {
                sl<NoteBloc>().add(NoteEvent.updateNote(
                    note: note.copyWith(
                        title: titleController.text,
                        body: bodyController.text)));
              }
            },
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(MARGIN),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Title",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              CustomTextFormField(
                textFieldType: TextFieldType.text,
                controller: titleController,
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Note",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Expanded(
                child: CustomTextFormField(
                  textFieldType: TextFieldType.text,
                  controller: bodyController,
                  minline: 40,
                  maxLines: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
