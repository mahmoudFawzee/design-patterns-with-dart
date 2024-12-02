import 'package:design_patterns/strategy_pattern/duck_example/models/duck.dart';

final class WoodDuck extends Duck {
  const WoodDuck({
    required super.age,
    required super.color,
    required super.name,
    required super.flyBehavior,
    required super.quackBehavior,
    required super.eatBehavior,
  });
  @override
  String display() => 'wood';
}
