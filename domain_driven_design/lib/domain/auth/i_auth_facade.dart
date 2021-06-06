import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/auth/auth_failure.dart';
import 'package:domain_driven_design/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';

// Abstract classes or Interfactes are just contracts which are later fulfilled by the Implementation of same class
abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
