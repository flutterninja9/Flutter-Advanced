import 'package:clean_architecture_tdd/interfaces/visitable.dart';
import 'package:clean_architecture_tdd/interfaces/visitor.dart';
import 'package:clean_architecture_tdd/visitors/body.dart';
import 'package:clean_architecture_tdd/visitors/face.dart';
import 'package:clean_architecture_tdd/visitors/finger.dart';
import 'package:clean_architecture_tdd/visitors/foot.dart';

class BodyPartProdVisitor implements BodyPartVisitor {
  void visit(BodyPart bodyPart) {
    if (bodyPart is Body) {
      print("Poking my ${bodyPart.name} with an electrode.");
    }
    if (bodyPart is Face) {
      print("Prodding ${bodyPart.name}.");
    }
    if (bodyPart is Finger) {
      print("Pricking ${bodyPart.name}.");
    }
    if (bodyPart is Foot) {
      print("Tickling ${bodyPart.name}.");
    }
  }
}
