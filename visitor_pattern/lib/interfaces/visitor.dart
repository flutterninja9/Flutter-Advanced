import 'package:clean_architecture_tdd/interfaces/visitable.dart';

abstract class BodyPartVisitor {
  visit(BodyPart bodyPart);
}
