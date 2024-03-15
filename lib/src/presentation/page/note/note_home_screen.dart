import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/injection.dart';
import 'package:notes/src/comman/constant.dart';
import 'package:notes/src/comman/routes.dart';
import 'package:notes/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:notes/src/presentation/bloc/note/note_bloc.dart';
import 'package:notes/src/presentation/page/note/add_note_screen.dart';
import 'package:notes/src/presentation/page/note/widget/note_tile.dart';
import 'package:notes/src/presentation/widget/custom_dialog.dart';
import 'package:notes/src/presentation/widget/custom_text_with_icon_button.dart';

class NoteHomeScreen extends StatefulWidget {
  const NoteHomeScreen({super.key});

  @override
  State<NoteHomeScreen> createState() => _NoteHomeScreenState();
}

class _NoteHomeScreenState extends State<NoteHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        actions: [
          CustomTextWithIconButton(
            icon: Icon(
              Icons.logout,
              size: 12,
            ),
            label: 'Logout',
            fontSize: 11,
            onTap: () {
              showConfirmationDialog(
                context,
                title: "Are you sure you want to logout?",
                primaryButtonLabel: 'Logout',
                onPrimaryButtonTap: () {
                  context.pop();
                  sl<AuthenticatorWatcherBloc>()
                      .add(AuthenticatorWatcherEvent.signOut());
                  context.go(AppRoutes.SIGNUP_ROUTE_PATH);
                },
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(AppRoutes.NEW_NOTE_ROUTE_PATH);
        },
        child: Icon(Icons.add),
      ),
      body: BlocBuilder<NoteBloc, NoteState>(
        bloc: sl()..add(const NoteEvent.started()),
        builder: (context, state) {
          return state.map(initial: (_) {
            return const Center(
              child: Text("Welcome!"),
            );
          }, loading: (_) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  Text("Loading..."),
                ],
              ),
            );
          }, noNotes: (_) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.notes,
                    size: 30,
                  ),
                  Text("No notes found! Create new"),
                ],
              ),
            );
          }, notesLoaded: (notesLoaded) {
            return Container(
              margin: EdgeInsets.all(MARGIN),
              child: ListView.separated(
                itemCount: notesLoaded.notes.length,
                itemBuilder: (context, index) =>
                    NoteTile(note: notesLoaded.notes[index]),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 12,
                  );
                },
              ),
            );
          }, error: (_) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.error,
                    size: 30,
                  ),
                  Text("Something went wrong"),
                ],
              ),
            );
          }, noteAdded: (value) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 30,
                  ),
                  Text("Note Added"),
                ],
              ),
            );
          }, noteUpdated: (value) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.update,
                    size: 30,
                  ),
                  Text("Note Updated"),
                ],
              ),
            );
          }, noteDeleted: (value) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.delete,
                    size: 30,
                  ),
                  Text("Note Deleted"),
                ],
              ),
            );
          });
        },
      ),
    );
  }
}
