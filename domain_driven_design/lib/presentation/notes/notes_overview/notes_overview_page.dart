import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design/application/auth/auth_bloc/auth_bloc.dart';
import 'package:domain_driven_design/application/notes/note_form/note_form_bloc.dart';
import 'package:domain_driven_design/application/notes/notes_actor/notes_actor_bloc.dart';
import 'package:domain_driven_design/application/notes/notes_watcher/notes_watcher_bloc.dart';
import 'package:domain_driven_design/injection.dart';
import 'package:domain_driven_design/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NotesWatcherBloc>()
            ..add(const NotesWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(create: (context) => getIt<NotesActorBloc>()),
        BlocProvider(create: (context) => getIt<NoteFormBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            /// [maybeMap] comes handy when we are targeting action
            /// on some particular case of defined union {In our case union is AuthState}
            state.maybeMap(
              unAuthenticated: (_) => context.router.pushAndPopUntil(
                const SignInPageRoute(),
                predicate: (_) => false,
              ),
              orElse: () {},
            );
          }),
          BlocListener<NotesActorBloc, NotesActorState>(
              listener: (context, state) {
            /// [maybeMap] comes handy when we are targeting action
            /// on some particular case of defined union {In our case union is AuthState}
            state.maybeMap(
              deleteFailure: (failure) =>
                  ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(seconds: 1),
                  content: Row(
                    children: [
                      const Icon(
                        Icons.info,
                        color: Colors.redAccent,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        failure.noteFailure.map(
                          unexpected: (f) => 'Unexpected error occured',
                          insufficientPermission: (f) =>
                              'Insufficient permissions ❌',
                          unableToUpdate: (f) => 'Unable to update note',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              orElse: () {},
            );
          }),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Notes"),
            leading: IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: const Icon(Icons.exit_to_app),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.indeterminate_check_box),
                onPressed: () {},
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // TODO  navigate to NoteFormPage
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
