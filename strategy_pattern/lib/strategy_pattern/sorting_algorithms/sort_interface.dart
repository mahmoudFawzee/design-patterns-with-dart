abstract class SortingStrategy {
  List sortAscending(List<dynamic> list);
  List sortDescending(List<dynamic> list);
}

final class SortingContext {
  SortingStrategy _sortStrategy;
  SortingContext(this._sortStrategy);

  void applySortingStrategy(SortingStrategy strategy) {
    _sortStrategy = strategy;
  }

  List sortAscending(List list) {
    return _sortStrategy.sortAscending(list);
  }

  List sortDescending(List list) {
    return _sortStrategy.sortDescending(list);
  }
}
