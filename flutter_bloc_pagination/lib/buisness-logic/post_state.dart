part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostSuccess extends PostState {
  final bool hasReachedMax;
  final List<PostModel> posts;

  const PostSuccess({
    @required this.hasReachedMax,
    @required this.posts,
  });

  PostSuccess copyWith({List<PostModel> posts, bool hasReachedMax}) {
    return PostSuccess(
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      posts: posts ?? this.posts,
    );
  }

  @override
  String toString() =>
      'PostSuccess(hasReachedMax: $hasReachedMax, posts: ${posts.length})';

  @override
  List<Object> get props => [hasReachedMax, posts];
}

class PostFailure extends PostState {}
