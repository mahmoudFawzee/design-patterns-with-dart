import 'package:design_patterns/strategy_pattern/duck_example/interface/quack_interface.dart';

final class CanQuack implements QuackBehavior {
  @override
  String quack() => 'i can quack';
}
