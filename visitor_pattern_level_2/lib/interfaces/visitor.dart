import 'package:clean_architecture_tdd/visitors/alchohol.dart';
import 'package:clean_architecture_tdd/visitors/necessties.dart';
import 'package:clean_architecture_tdd/visitors/tobacco.dart';

abstract class Visitor {
  double visitAlchohol(Alchohol alchohol);
  double visitTobacco(Tobacco tobacoo);
  double visitNecessities(Necessities necessities);
}
