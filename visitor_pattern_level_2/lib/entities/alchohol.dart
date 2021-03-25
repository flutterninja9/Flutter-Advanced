import 'package:clean_architecture_tdd/interfaces/visitable.dart';
import 'package:clean_architecture_tdd/interfaces/visitor.dart';

class Alchohol extends Visitable {
  final double price;

  Alchohol({required this.price});

  double getPrice() {
    return this.price;
  }

  @override
  double acceptAlchohol(Visitor visitor) {
    return visitor.visitAlchohol(this);
  }

  @override
  double acceptNecessities(Visitor visitor) {
    throw UnimplementedError();
  }

  @override
  double acceptTobacco(Visitor visitor) {
    throw UnimplementedError();
  }
}
