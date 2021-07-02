import 'package:domain_driven_design/application/notes/notes_watcher/notes_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewBody extends StatelessWidget {
  const NotesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesWatcherBloc, NotesWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) => ListView.builder(
          itemCount: state.notes.size,
          itemBuilder: (context, index) {
            final note = state.notes[index];
            if (note.failureOption.isSome()) {
              return Container(
                color: Colors.red,
                height: 100,
                width: 100,
              );
            } else {
              return Container(
                color: Colors.red,
                height: 100,
                width: 100,
              );
            }
          },
        ),
        loadFailure: (state) {
          return Container(
            color: Colors.amber,
            height: 200,
            width: 200,
          );
        },
      ),
    );
  }
}
