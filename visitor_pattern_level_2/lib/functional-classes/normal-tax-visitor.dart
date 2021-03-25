import 'package:clean_architecture_tdd/interfaces/visitor.dart';

class NormalTaxVisitor implements Visitor {
  @override
  double visitAlchohol(alchohol) {
    print("New normal tax on item : ");
    return (alchohol.getPrice() * 0.25) + alchohol.getPrice();
  }

  @override
  double visitNecessities(necessities) {
    print("New normal tax on item : ");
    return (necessities.getPrice() * 0.0) + necessities.getPrice();
  }

  @override
  double visitTobacco(tobacoo) {
    print("New normal tax on item : ");
    return (tobacoo.getPrice() * 0.30) + tobacoo.getPrice();
  }
}
