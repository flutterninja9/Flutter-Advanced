import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class UserModel extends Equatable {
  String email;
  String uid;
  String profilePic;

  UserModel({
    @required this.email,
    @required this.profilePic,
    @required this.uid,
  });

  @override
  List<Object> get props => [
        email,
        uid,
        profilePic,
      ];
}
