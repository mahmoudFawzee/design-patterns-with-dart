import 'package:design_patterns/strategy_pattern/duck_example/interface/fly_interface.dart';

final class RocketFly extends FlyBehavior{

  @override
  String fly() => 'i can fly with rocket';
}