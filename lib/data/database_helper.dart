import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static const _databaseName = "khmer_pos.db";

  late Database _db;

  Future<void> init() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _databaseName);
    _db = await openDatabase(
      path,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE table (
            id INTEGER PRIMARY KEY,
            table_number INTEGER NOT NULL,
            hasOrdered BOOLEAN DEFAULT 0,
            isPaid BOOLEAN DEFAULT 0,
          );
          ''');
  }
}
