import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/auth/user.dart';
import 'auth_failure.dart';
import 'value_objects.dart';

// Abstract classes or Interfactes are just contracts which are later fulfilled by the Implementation of same class
abstract class IAuthFacade {
  /// Holds the contract for getting the signed in user
  Future<Option<User>> getSignedInUser();

  /// Holds the contract for registering a user with email & password
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  /// Holds the contract for logging in a user with email & password
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  /// Holds the contract for sigining in the user with Google
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  /// Holds the contract for signin out the user
  Future<void> signOut();
}
