import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pagination/views/posts.dart';
import 'package:http/http.dart' as http;

import 'buisness-logic/post_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final client = http.Client();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc(client: client)
        ..add(FetchPosts(
          startIndex: 0,
          // Shows that we don't have any posts in the initial Stage
          posts: [],
        )),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PostScreen(),
      ),
    );
  }
}
