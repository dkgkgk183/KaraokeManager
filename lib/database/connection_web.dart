import 'package:drift/drift.dart';
import 'package:drift/web.dart';

Future<QueryExecutor> createConnection() async {
  return WebDatabase('karaoke');  // IndexedDB 이름 (원하는 대로)
}