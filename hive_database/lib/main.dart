import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _my_box = Hive.box('mybox');
  void Write(){
    _my_box.put(1, "asghar");
    _my_box.put(2, "akbar");
    _my_box.put(3, "gholi");
    _my_box.put(4, "hassan");
    _my_box.put(5, "hosseun");
    _my_box.put(6, ["abtin",27,true]);

  }
  void Read(){
   print( _my_box.get(1));
   print( _my_box.get(2));
   print( _my_box.get(3));
   print( _my_box.get(4));
   print( _my_box.get(5));


  }
  void Delete(){
    _my_box.deleteAt(1);



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(onPressed: Write , child: Text('Write'),color: Colors.green[300],),
            MaterialButton(onPressed: Read , child: Text('Read'),color: Colors.deepPurple[300],),
            MaterialButton(onPressed: Delete , child: Text('Delete'),color: Colors.red[300],),


          ],
        ),
      ),
    );
  }
}


