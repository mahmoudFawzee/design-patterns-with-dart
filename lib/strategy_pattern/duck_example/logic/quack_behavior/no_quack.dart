import 'package:design_patterns/strategy_pattern/duck_example/interface/quack_interface.dart';

final class NoQuack extends QuackBehavior {
  @override
  String quack() => 'no Quack';
}
