import 'package:design_patterns/strategy_pattern/sorting_algorithms/sort_interface.dart';

final class InsertionSort implements SortingStrategy {
  @override
  List sortAscending(List list) {
    print('insertion sort had started :---');
    //first we need to create vars outer inner
    final listLength = list.length;
    for (int outer = 1; outer < listLength; outer++) {
      //?outer is the currentIndex which we compare with other items
      int currentIndex = outer;
      //?
      for (int inner = outer; inner >= 0; inner--) {
        //?if current is smaller than pre item
        if (list[currentIndex] < list[inner]) {
          //todo : swap.
          final temp = list[inner];
          list[inner] = list[currentIndex];
          list[currentIndex] = temp;
          currentIndex--;
          //*we also can make currentIndex = inner.
        }
      }
    }
    return list;
  }

  @override
  List sortDescending(List list) {
    print('insertion sort had started :---');
    //first we need to create vars outer inner
    final listLength = list.length;
    for (int outer = 1; outer < listLength; outer++) {
      //?outer is the currentIndex which we compare with other items
      int currentIndex = outer;
      //?
      for (int inner = outer; inner >= 0; inner--) {
        //?if current is smaller than pre item
        if (list[currentIndex] > list[inner]) {
          //todo : swap.
          final temp = list[inner];
          list[inner] = list[currentIndex];
          list[currentIndex] = temp;
          currentIndex = inner;
        }
      }
    }
    return list;
  }
}
