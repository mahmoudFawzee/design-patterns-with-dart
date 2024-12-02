import 'package:design_patterns/strategy_pattern/duck_example/interface/quack_interface.dart';

final class CanSqueak extends QuackBehavior {
  @override
  String quack() => 'i can squeak';
}
