
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:sqflite_db/tools.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future <Database> get database async => _database ??= await _initDatabase();

  Future <Database> _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'tools.db');
    return await openDatabase(

        path,
        version: 1,
        onCreate: _onCreate
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE tools(
    id INTEGER PRIMARY KEY,
    name TEXT
    )
     ''');
  }


  Future <List<Tools>> getTools() async {
    Database db = await instance.database;
    var tools = await db.query('tools', orderBy: 'name');
    List<Tools> toolList = tools.isNotEmpty ? tools.map((e) => Tools.fromMap(e))
        .toList() : [];
    return toolList;
  }


  Future <int> add (Tools tool) async{
    Database db = await instance.database;
    return await db.insert('tools', tool.toMap());
  }
  Future <int> remove(int id) async{
    Database db = await instance.database;
    return await db.delete('tools',where: 'id=?',whereArgs: [id]);
  }
  Future <int> update(Tools tool) async{
    Database db = await instance.database;
    return await db.update('tools', tool.toMap() , where: 'id=?', whereArgs: [tool.id] );
  }
}