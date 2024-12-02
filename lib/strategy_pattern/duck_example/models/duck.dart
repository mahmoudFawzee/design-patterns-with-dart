import 'package:design_patterns/strategy_pattern/duck_example/interface/eat_interface.dart';
import 'package:design_patterns/strategy_pattern/duck_example/interface/fly_interface.dart';
import 'package:design_patterns/strategy_pattern/duck_example/interface/quack_interface.dart';

abstract class Duck {
  final String name;
  final String color;
  final int age;
  final FlyBehavior flyBehavior;
  final QuackBehavior quackBehavior;
  final EatBehavior eatBehavior;
  const Duck({
    required this.name,
    required this.color,
    required this.age,
    required this.flyBehavior,
    required this.quackBehavior,
    required this.eatBehavior,
  });
  String display();

  @override
  String toString() {
    String props = '{name : $name , color : $color , age : $age}';
    String behavior =
        '{fly : ${flyBehavior.fly()} , quack : ${quackBehavior.quack()} , eat : ${eatBehavior.eat()}}';
    return 'props : $props \nbehavior : $behavior';
  }
}
