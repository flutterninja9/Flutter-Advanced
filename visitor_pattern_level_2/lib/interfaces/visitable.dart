import 'package:clean_architecture_tdd/interfaces/visitor.dart';

abstract class Visitable {
  double acceptAlchohol(Visitor visitor);
  double acceptTobacco(Visitor visitor);
  double acceptNecessities(Visitor visitor);
}
