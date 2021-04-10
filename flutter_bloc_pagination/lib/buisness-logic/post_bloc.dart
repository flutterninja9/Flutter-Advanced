import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

import 'package:flutter_bloc_pagination/post-model.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({
    @required this.client,
  }) : super(PostInitial());

  final http.Client client;

  @override
  Stream<Transition<PostEvent, PostState>> transformEvents(
      Stream<PostEvent> events, transitionFn) {
    return super.transformEvents(
      events.debounceTime(Duration(milliseconds: 500)),
      transitionFn,
    );
  }

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    if (event is FetchPosts && !_hasReachedMax(state)) {
      try {
        if (state is PostInitial) {
          final posts = await _fetchPosts(event.startIndex, 20);
          yield PostSuccess(posts: posts, hasReachedMax: false);
        }
        if (state is PostSuccess) {
          final posts = await _fetchPosts(event.startIndex, 20);
          yield posts.isEmpty
              ? PostSuccess(hasReachedMax: true, posts: event.posts)
              : PostSuccess(hasReachedMax: false, posts: event.posts + posts);
        }
      } catch (e) {
        yield PostFailure();
      }
    }
  }
}

bool _hasReachedMax(PostState state) =>
    state is PostSuccess && state.hasReachedMax;

Future<List<PostModel>> _fetchPosts(int startIndex, int upperLimit) async {
  final response = await http.get(
    Uri.parse(
      'https://jsonplaceholder.typicode.com/posts?_start=$startIndex&_limit=$upperLimit',
    ),
  );
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as List;
    return data.map((post) => PostModel.fromMap(post)).toList();
  } else {
    throw Exception('Problem in fetching posts');
  }
}
