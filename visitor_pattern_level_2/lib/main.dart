import 'package:clean_architecture_tdd/functional-classes/normal-tax-visitor.dart';
import 'package:clean_architecture_tdd/visitors/alchohol.dart';
import 'package:clean_architecture_tdd/visitors/necessties.dart';
import 'package:clean_architecture_tdd/visitors/tobacco.dart';

void main() {
  final NormalTaxVisitor taxVisitor = NormalTaxVisitor();

  final Alchohol vodka = Alchohol(price: 180);
  final Tobacco cigar = Tobacco(price: 80);
  final Necessities milk = Necessities(price: 30);

  print(vodka.acceptAlchohol(taxVisitor));
  print(cigar.acceptTobacco(taxVisitor));
  print(milk.acceptNecessities(taxVisitor));
}
