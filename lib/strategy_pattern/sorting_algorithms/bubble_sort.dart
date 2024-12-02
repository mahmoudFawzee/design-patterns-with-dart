import 'package:design_patterns/strategy_pattern/sorting_algorithms/sort_interface.dart';

final class BubbleSort implements SortingStrategy {
  @override
  List sortAscending(List list) {
    for (var i = 1; i < list.length; i++) {
      for (var j = 0; j < list.length - i; j++) {
        final temp = list[j];
        if (list[j] > list[j + 1]) {
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
    return list;
  }

  @override
  List sortDescending(List list) {
    for (var i = 1; i < list.length; i++) {
      for (var j = 0; j < list.length - i; j++) {
        final temp = list[j];
        if (list[j] < list[j + 1]) {
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
    return list;
  }
}
