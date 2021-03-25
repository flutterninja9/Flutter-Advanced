import 'package:clean_architecture_tdd/entities/alchohol.dart';
import 'package:clean_architecture_tdd/entities/necessties.dart';
import 'package:clean_architecture_tdd/entities/tobacco.dart';

abstract class Visitor {
  double visitAlchohol(Alchohol alchohol);
  double visitTobacco(Tobacco tobacoo);
  double visitNecessities(Necessities necessities);
}
