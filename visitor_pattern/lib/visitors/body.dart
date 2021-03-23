import 'package:clean_architecture_tdd/interfaces/visitable.dart';
import 'package:clean_architecture_tdd/interfaces/visitor.dart';
import 'package:clean_architecture_tdd/visitors/face.dart';

import 'finger.dart';
import 'foot.dart';

class Body implements BodyPart {
  @override
  String? name;
  List<BodyPart>? bodyParts;

  Body() {
    bodyParts = List.from([
      Face(),
      Finger("Index Finger"),
      Finger("Thumb"),
      Foot("Left Foot"),
      Foot("Right Foot"),
      Foot("Third Foot?"),
    ]);
  }

  @override
  void accept(BodyPartVisitor visitor) {
    for (var bodyPart in bodyParts!) {
      bodyPart.accept(visitor);
    }
    visitor.visit(this);
  }
}
