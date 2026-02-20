import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ui_state.g.dart';

@Riverpod(keepAlive: true)
class TabIndex extends _$TabIndex {
  @override
  int build() => 1;
  void setTab(int index) => state = index;
}

@Riverpod(keepAlive: true)
class SelectedDate extends _$SelectedDate {
  @override
  DateTime build() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }
  void setDate(DateTime date) => state = DateTime(date.year, date.month, date.day);
}

@Riverpod(keepAlive: true)
class SearchQuery extends _$SearchQuery {
  @override
  String build() => '';
  void setQuery(String query) => state = query;
  void clear() => state = '';
}

@Riverpod(keepAlive: true)
class SelectedBrand extends _$SelectedBrand {
  @override
  String build() => 'TJ';
  void setBrand(String brand) => state = brand;
}

@Riverpod(keepAlive: true)
class IsSortByNote extends _$IsSortByNote {
  @override
  bool build() => false;
  void toggle() => state = !state;
}

@Riverpod(keepAlive: true)
class RecommendBrand extends _$RecommendBrand {
  @override
  String build() => 'TJ';
  void setBrand(String brand) => state = brand;
}