import 'package:clean_architecture_tdd/interfaces/visitable.dart';
import 'package:clean_architecture_tdd/interfaces/visitor.dart';

class Tobacco extends Visitable {
  final double price;

  Tobacco({required this.price});

  double getPrice() {
    return this.price;
  }

  @override
  double acceptAlchohol(Visitor visitor) {
    throw UnimplementedError();
  }

  @override
  double acceptNecessities(Visitor visitor) {
    throw UnimplementedError();
  }

  @override
  double acceptTobacco(Visitor visitor) {
    return visitor.visitTobacco(this);
  }
}
