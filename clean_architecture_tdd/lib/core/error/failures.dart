import 'package:equatable/equatable.dart';

// Just an abstract class, and will be acting as a model for our errors
abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]) : super([properties]);
}
