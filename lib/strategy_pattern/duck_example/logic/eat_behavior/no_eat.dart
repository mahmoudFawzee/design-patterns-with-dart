import 'package:design_patterns/strategy_pattern/duck_example/interface/eat_interface.dart';

final class NoEat extends EatBehavior {
  @override
  String eat() => 'i can not eat';
}
