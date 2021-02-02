import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'data_model.dart';

class DataService {
  final String _databaseName = "club.db";
  final int _databaseVersion = 1;
  final String _tableName = "data";
  Database _database;

  Future<List<DataModel>> getList() async {
    try {
      String sql = '''
         SELECT rowid, question, answer_count, answer, progress FROM $_tableName
      ''';
      _database = _database ?? await _initDatabase();
      List<Map> dbList = await _database.rawQuery(sql);
      return dbList.map((e) => DataModel.fromJson(e)).toList();
    } catch (_) {
      return [];
    }
  }

  Future<void> update({
    String question,
    String answer,
    String wrong1,
    String wrong2,
    String wrong3,
  }) async {
    //TODO write update function
    // String sql = '''
    //      INSERT INTO data (question, answer, wrong1, wrong2, wrong3)
    //      VALUES ("$question", "$answer", "$wrong1", "$wrong2", "$wrong3")
    //  ''';
    // _database = _database ?? await _initDatabase();
    // await _database.execute(sql);
  }

  Future<int> getMoney() async {
    //TODO write get money
  }

  Future<void> setMoney() async {
    //TODO write set money
  }

  Future<Database> _initDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, _databaseName);
    if (!await databaseExists(path)) await _copyFromAssets(path);
    return await openDatabase(path, version: _databaseVersion);
  }

  Future<void> _copyFromAssets(String path) async {
    await Directory(dirname(path)).create(recursive: true);
    final ByteData data = await rootBundle.load(join("assets", _databaseName));
    List<int> bytes = data.buffer.asUint8List(
      data.offsetInBytes,
      data.lengthInBytes,
    );
    await File(path).writeAsBytes(bytes, flush: true);
  }
}
