import 'package:equatable/equatable.dart';

abstract class ErrorModel extends Equatable {
  ErrorModel([List properties = const <dynamic>[]]) : super([properties]);
}

// General Failures
abstract class ServerFailure extends ErrorModel {}
