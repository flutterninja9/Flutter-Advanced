import 'package:clean_architecture_tdd/interfaces/visitor.dart';

abstract class BodyPart {
  String? name;

  void accept(BodyPartVisitor visitor) => visitor.visit(this);
}
