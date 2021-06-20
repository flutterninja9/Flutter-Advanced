import 'failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const String explananation =
        'Encountered a ValueFailure at an unrecoverable point, Terminating.';
    return Error.safeToString('$explananation Failure was $valueFailure');
  }
}
