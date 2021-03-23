import 'package:clean_architecture_tdd/interfaces/visitable.dart';
import 'package:clean_architecture_tdd/interfaces/visitor.dart';

class Liqour implements Visitable {
  final double price;

  Liqour(this.price);

  double getPrice() {
    return this.price;
  }

  @override
  double accept(Visitor visitor) {
    throw UnimplementedError();
  }
}
