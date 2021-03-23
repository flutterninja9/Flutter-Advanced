import 'package:clean_architecture_tdd/interfaces/visitor.dart';

// Every vistor created will be implemeted by this interface

abstract class Visitable {
  double accept(Visitor visitor);
}
