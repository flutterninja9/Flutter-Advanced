import 'package:clean_architecture_tdd/usecases/body-part-releaser.dart';
import 'package:clean_architecture_tdd/usecases/body-part-sticher.dart';
import 'package:clean_architecture_tdd/visitors/body.dart';

/// Visitor pattern helps us to induce new methods to an existing class without actaully disturbing the class that much
/// Basically decoples the Usecases from its base class
/// Pragmatically Talking, Visitor allows addition of new methods inside the class
///
/// In this example :-
/// BodyPart -> Visitable
/// BodyPartVisitor -> Visitor

void main() {
  var body = Body();
  body.accept(BodyPartStitchVisitor());
  body.accept(BodyPartProdVisitor());
}
