import 'package:design_patterns/strategy_pattern/sorting_algorithms/sort_interface.dart';

final class MergeSort implements SortingStrategy {
  //?we use this function to
  @override
  List sortAscending(List list) {
    if (list.length <= 1) return list;
    final listLength = list.length;
    //todo : find the middle
    final listMid = listLength ~/ 2;

    //divide
    //we've list 1 and list2
    List left = list.sublist(0, listMid);
    List right = list.sublist(listMid);
    left = sortAscending(left);
    right = sortAscending(right);

    return _merge(left, right);
  }

  List _merge(List list1, List list2) {
    List mergedList = [];
    int l1P = 0, l2P = 0;
    //todo : first we need to compare first each value
    //todo: in list one with all values in list2
    while (l1P < list1.length && l2P < list2.length) {
      if (list1[l1P] < list2[l2P]) {
        mergedList.add(list1[l1P]);
        l1P++;
      } else {
        mergedList.add(list2[l2P]);
        l2P++;
      }
    }
    //todo: now we need to move all remaining values in list one
    while (l1P < list1.length) {
      mergedList.add(list1[l1P]);
      l1P++;
    }
    //todo: we also need to move all remaining values in list2
    while (l2P < list2.length) {
      mergedList.add(list2[l2P]);
      l2P++;
    }
    return mergedList;
  }

  @override
  List sortDescending(List list) {
    return list;
  }
}
