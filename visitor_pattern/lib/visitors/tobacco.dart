import 'package:clean_architecture_tdd/interfaces/visitable.dart';
import 'package:clean_architecture_tdd/interfaces/visitor.dart';

class Tobacco implements Visitable {
  final double price;

  Tobacco(this.price);

  double getPrice() {
    return this.price;
  }

  @override
  double accept(Visitor visitor) {
    throw UnimplementedError();
  }
}
