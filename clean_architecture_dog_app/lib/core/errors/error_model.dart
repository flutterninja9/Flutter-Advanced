import 'package:equatable/equatable.dart';

abstract class ErrorModel extends Equatable {
  ErrorModel([List properties = const <dynamic>[]]) : super([properties]);
}

// General Failures
class ServerFailure extends ErrorModel {}

class DeviceOfflineFailure extends ErrorModel {}
