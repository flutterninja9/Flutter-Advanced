import 'package:dartz/dartz.dart';
import 'auth_failure.dart';
import 'value_objects.dart';

// Abstract classes or Interfactes are just contracts which are later fulfilled by the Implementation of same class
abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
