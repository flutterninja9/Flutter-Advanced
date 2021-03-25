import 'package:clean_architecture_tdd/usecases/normal-tax-visitor.dart';

import 'entities/alchohol.dart';
import 'entities/necessties.dart';
import 'entities/tobacco.dart';

void main() {
  final NormalTaxVisitor taxVisitor = NormalTaxVisitor();

  final Alchohol vodka = Alchohol(price: 180);
  final Tobacco cigar = Tobacco(price: 80);
  final Necessities milk = Necessities(price: 30);

  print(vodka.acceptAlchohol(taxVisitor));
  print(cigar.acceptTobacco(taxVisitor));
  print(milk.acceptNecessities(taxVisitor));
}
