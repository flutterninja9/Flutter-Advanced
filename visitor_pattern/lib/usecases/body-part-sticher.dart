import 'package:clean_architecture_tdd/interfaces/visitable.dart';
import 'package:clean_architecture_tdd/interfaces/visitor.dart';
import 'package:clean_architecture_tdd/visitors/body.dart';
import 'package:clean_architecture_tdd/visitors/face.dart';
import 'package:clean_architecture_tdd/visitors/finger.dart';
import 'package:clean_architecture_tdd/visitors/foot.dart';

class BodyPartStitchVisitor implements BodyPartVisitor {
  void visit(BodyPart bodyPart) {
    if (bodyPart is Body) {
      print("Reanimating my ${bodyPart.name}.");
    }
    if (bodyPart is Face) {
      print("Stitching together my ${bodyPart.name}.");
    }
    if (bodyPart is Finger) {
      print("Stitching together my ${bodyPart.name}.");
    }
    if (bodyPart is Foot) {
      print("Gluing on my ${bodyPart.name}.");
    }
  }
}
