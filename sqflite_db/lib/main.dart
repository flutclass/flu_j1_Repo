import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:sqflite_db/database_helper.dart';
import 'package:sqflite_db/tools.dart';

void main() {
  
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: SqfliteApp()));
}

class SqfliteApp extends StatefulWidget {
  const SqfliteApp({Key? key}) : super(key: key);

  @override
  State<SqfliteApp> createState() => _SqfliteAppState();
}

class _SqfliteAppState extends State<SqfliteApp> {
  int? selectedId;
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: TextField(
          controller: _textController,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[400],
        child: Icon(Icons.add),
        onPressed: () async{
          selectedId !=null ?
              await DatabaseHelper.instance.update(Tools(id: selectedId ,
                  name: _textController.text.trim())):
          await DatabaseHelper.instance.add(Tools(name: _textController.text.trim()));
          setState(() {
            _textController.clear();

          });
        },

      ),
      body: Center(
        child: FutureBuilder<List<Tools>>(
          future: DatabaseHelper.instance.getTools(),
          builder: (BuildContext context , AsyncSnapshot<List<Tools>> snapshot ){
            if(!snapshot.hasData){
              return Center(child: Text('loading ....'),);
            }
            return snapshot.data!.isEmpty ?
                Center(child: Text("no tools in the toolbox"),)
              :ListView(
              children: snapshot.data!.map((tool) {
                return Center(
                  child: ListTile(
                    title: Text(tool.name),

                    onTap: (){
                      setState(() {
                        _textController.text = tool.name;
                        selectedId = tool.id;
                      });
                    },
                    onLongPress: (){
                      setState(() {
                        DatabaseHelper.instance.remove(tool.id!);

                      });
                    },
                  ),
                );

              }).toList(),

            );
          },
        ),
      ),
    );
  }
}



