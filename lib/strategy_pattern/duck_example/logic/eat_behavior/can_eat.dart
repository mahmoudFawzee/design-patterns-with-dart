import 'package:design_patterns/strategy_pattern/duck_example/interface/eat_interface.dart';

final class CanEat extends EatBehavior {
  @override
  String eat() => 'i can eat';
}
