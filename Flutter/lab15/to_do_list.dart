import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory directory = await getApplicationCacheDirectory();
    String path = join(directory.path, 'myDatabase.db');
    var db = await openDatabase(path, onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE TODO 
              (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
               title NOT NULL, 
               desc TEXT 
          );'''
      );
    }, onUpgrade: (db, oldVersion, newVersion) {}, version: 1);
    return db;
  }

  Future<List<Map<String,dynamic>>> showList() async {
    Database db = await initDatabase();
    //List<Map<String,dynamic>> data = await db.query("toDo");
    //print(data);
    return await db.rawQuery("select * from TODO");
  }

  Future<void> insertWork(Map<String, dynamic> toDo) async {
    Database db = await initDatabase();
    int id = await db.insert("TODO", toDo);

  }

  Future<void> updateWork(int index,Map<String, dynamic> map) async {
    Database db = await initDatabase();
    int id = await db.update("TODO", map,
        where: "id = ?", whereArgs: [index]);
  }

  Future<void> deleteWork(int index) async {
    Database db = await initDatabase();
    int id = await db.delete("TODO",where: "id = ?",whereArgs: [index]);
  }



}