import 'package:clean_architecture_tdd/interfaces/visitable.dart';
import 'package:clean_architecture_tdd/interfaces/visitor.dart';

class Necessities extends Visitable {
  final double price;

  Necessities({required this.price});

  double getPrice() {
    return this.price;
  }

  @override
  double acceptAlchohol(Visitor visitor) {
    throw UnimplementedError();
  }

  @override
  double acceptNecessities(Visitor visitor) {
    return visitor.visitNecessities(this);
  }

  @override
  double acceptTobacco(Visitor visitor) {
    throw UnimplementedError();
  }
}
