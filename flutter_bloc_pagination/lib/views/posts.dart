import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pagination/buisness-logic/post_bloc.dart';
import 'package:flutter_bloc_pagination/shared-widgets/bottom-loader.dart';
import 'package:flutter_bloc_pagination/views/widgets/post-widgets.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final ScrollController _controller = ScrollController();
  final _scrollThreshold = 200.0;
  PostBloc _postBloc;

  _onScroll(PostSuccess state) {
    if (_controller.hasClients) {
      final maxScroll = _controller.position.maxScrollExtent;
      final _currentScroll = _controller.position.pixels;
      if (maxScroll - _currentScroll <= _scrollThreshold) {
        _postBloc.add(
            FetchPosts(startIndex: state.posts.length, posts: state.posts));
      }
    }
    print('waiting!');
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //write or call your logic
      //code will run when widget rendering complete
      _controller
          .addListener(_onScroll(PostSuccess(hasReachedMax: false, posts: [])));
      _postBloc = context.read<PostBloc>();
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        centerTitle: true,
      ),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is PostFailure) {
            return Center(
              child: Text('failed to fetch posts'),
            );
          }
          if (state is PostSuccess) {
            return ListView.builder(
              controller: _controller,
              itemBuilder: (context, index) {
                return index >= state.posts.length
                    ? BottomLoader()
                    : PostWidget(
                        post: state.posts[index],
                      );
              },
              itemCount: state.hasReachedMax
                  ? state.posts.length
                  : state.posts.length + 1,
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
