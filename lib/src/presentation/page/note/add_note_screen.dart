import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/injection.dart';
import 'package:notes/src/comman/constant.dart';
import 'package:notes/src/presentation/bloc/note/note_bloc.dart';
import 'package:notes/src/presentation/widget/custom_text_form_field.dart';
import 'package:notes/src/presentation/widget/custom_text_with_icon_button.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteBloc, NoteState>(
      bloc: sl(),
      listener: (context, state) {
        state.mapOrNull(
          noteAdded: (value) {
            context.pop();
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("New Note"),
          leading: CustomTextWithIconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 12,
            ),
            label: 'Home',
            fontSize: 11,
            onTap: () {
              context.pop();
            },
          ),
          actions: [
            CustomTextWithIconButton(
              icon: Icon(
                Icons.save,
                size: 12,
              ),
              label: 'Save',
              fontSize: 11,
              onTap: () {
                if (formKey.currentState?.validate() == true) {
                  sl<NoteBloc>().add(NoteEvent.addNote(
                      title: titleController.text, body: bodyController.text));
                }
              },
            ),
          ],
        ),
        body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(MARGIN),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
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
                SizedBox(
                  height: 12,
                ),
                Text(
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
      ),
    );
  }
}
