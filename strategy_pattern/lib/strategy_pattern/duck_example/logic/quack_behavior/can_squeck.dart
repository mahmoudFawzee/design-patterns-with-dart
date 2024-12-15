import 'package:design_patterns/strategy_pattern/duck_example/interface/quack_interface.dart';

final class CanSqueak implements QuackBehavior {
  @override
  String quack() => 'i can squeak';
}
