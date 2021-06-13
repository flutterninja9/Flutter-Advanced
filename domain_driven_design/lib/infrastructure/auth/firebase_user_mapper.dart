import 'package:domain_driven_design/domain/auth/user.dart';
import 'package:domain_driven_design/domain/core/value_object.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

extension FirebaseUserDomainX on firebase.User {
  User toDomain() => User(
        uniqueId: UniqueId.fromUniqueString(uid),
      );
}
