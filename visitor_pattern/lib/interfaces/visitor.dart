// Whenever a new Item is added in usecase, It would be added here too
// Just provides an interface and visit() for all its childs
abstract class Visitor {
  double visit(Type liquorItem);
}
