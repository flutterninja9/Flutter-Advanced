part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object> get props => [];
}

class FetchPosts extends PostEvent {
  final int startIndex;
  final List<PostModel> posts;

  FetchPosts({
    @required this.startIndex,
    @required this.posts,
  });

  @override
  List<Object> get props => [startIndex, posts];
}
