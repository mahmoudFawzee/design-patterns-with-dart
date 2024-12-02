import 'dart:developer';

import 'package:design_patterns/strategy_pattern/sorting_algorithms/bubble_sort.dart';
import 'package:design_patterns/strategy_pattern/sorting_algorithms/merge_sort.dart';
import 'package:design_patterns/strategy_pattern/sorting_algorithms/sort_interface.dart';

void main() {
  //? as default way to sort we use bubble sort
  //?we also can use another way to sort later
  final context = SortingContext(BubbleSort());
  final list = [20, 50, 7, 1, 60, 3, 99, 100, 58, 455, 0];
  log('per sort list : $list');
//bubble sort
  // final intList = [2, 5, 4, 1, 3, 6, 9, 0, 2, 1, 5, 74];
  // final sortedList = context.sort(intList);
  // log('bubble sort : $sortedList'); //!done

  //*selection sort
  //todo:final stringList = ['rami', 'ali', 'celina', 'bogi', 'zair', 'yazan'];
  // final list2 = [20, 50, 7, 1, 60, 3, 99, 100, 58, 455, 0];
  // log('list before sort : $list2');
  // context.applySortingStrategy(SelectionSort());
  // final sortedSelectionSort = context.sortAscending(list2);
  // log('selection sort : $sortedSelectionSort');

  //*insertion sort
  // log('pre insertion sort : $list');
  // context.applySortingStrategy(InsertionSort());
  // final sortedInsertionSort = context.sortAscending(list);
  // log('insertion sort : $sortedInsertionSort');

//*merge sort
  context.applySortingStrategy(MergeSort());
  final sortedList = context.sortAscending(list);
  log('sorted list : $sortedList');
}
