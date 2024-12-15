import 'package:design_patterns/strategy_pattern/sorting_algorithms/sort_interface.dart';

final class SelectionSort implements SortingStrategy {
  @override
  List sortAscending(List list) {
    final int listLength = list.length;

    //?we made outer stops on len-1 because we already put all
    //?items in them place.

    //?[0:9]=>which are 10 rounds l-1.
    for (int outer = 0; outer < listLength - 1; outer++) {
      //todo: we must make the biggest index equals 0 in each round
      int biggestIndex = 0;

      //todo: we must make the inner index equals 1 in each round.
      int inner = 1;
      //?now we need to compare the biggest index with all list items
      //?and if we found bigger one we will set its index as the biggest index.

      for (inner = 1; inner < listLength - outer; inner++) {
        //?when l = 11 and we are in the last pass which is 9 ::note passes [0:9].
        //?inner take values of 0 and 1.
        if (list[inner] > list[biggestIndex]) {
          biggestIndex = inner;
        }
      }
      //todo: the swap will happened in the end of each outer pass.
      final temp = list[biggestIndex];
      //?why we make inner -1 .
      //*because inner increased to 11 then we check the condition
      //*so the last value inner take is 11 and we need to call
      //*the last index in the list which will be 11-1=10
      //*and so on through the rounds.
      list[biggestIndex] = list[inner - 1];
      list[inner - 1] = temp;
    }

    return list;
  }

  @override
  List sortDescending(List list) {
    final int listLength = list.length;
    //?1: make the biggest element always starts with 0;
    int biggestIndex = 0, inner = 1;
    //?we made it stops on len-1 because we already put all
    //?items in them place.

    //?[0:9]=>which are 10 rounds l-1.
    for (int outer = 0; outer < listLength - 1; outer++) {
      //todo: we must make the biggest index equals 0 in each round
      biggestIndex = 0;

      //todo: we must make the inner index equals 1 in each round.
      inner = 1;
      //?now we need to compare the biggest index with all list items
      //?and if we found bigger one we will set its index as the biggest index.

      for (inner = 1; inner < listLength - outer; inner++) {
        //?when l = 11 and we are in the last pass which is 9 ::note passes [0:9].
        //?inner take values of 0 and 1.
        if (list[inner] > list[biggestIndex]) {
          biggestIndex = inner;
        }
      }
      //todo: the swap will happened in the end of each outer pass.
      final temp = list[biggestIndex];
      //?why we make inner -1 .
      //*because inner increased to 11 then we check the condition
      //*so the last value inner take is 11 and we need to call
      //*the last index in the list which will be 11-1=10
      //*and so on through the rounds.
      list[biggestIndex] = list[inner - 1];
      list[inner - 1] = temp;
    }

    return list;
  }

  //another way to sort.
  List sortDescending2(List list) {
    final int listLength = list.length;

    for (int outer = 0; outer < listLength - 1; outer++) {
      //?in inner loop, we need to decrease its size per round
      int minIndex = outer;
      for (var inner = outer + 1; inner < listLength; inner++) {
        if (list[inner] > list[minIndex]) {
          minIndex = inner; // Update the index of the smallest element
        }
      }

      final temp = list[minIndex];
      list[minIndex] = list[outer];
      list[outer] = temp;
    }
    return list;
  }

  List sortAscending2(List list) {
    final listLength = list.length;

    for (var outer = 0; outer < listLength - 1; outer++) {
      //?in inner loop, we need to decrease its size per round
      var minIndex = outer;
      for (var inner = outer + 1; inner < listLength; inner++) {
        if (list[inner] < list[minIndex]) {
          minIndex = inner; // Update the index of the smallest element
        }
      }

      final temp = list[minIndex];
      list[minIndex] = list[outer];
      list[outer] = temp;
    }
    return list;
  }
}
