import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp() ,
  ) );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(

        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurple[300],
            leading: Icon(Icons.menu),
            title: Text('SLIVER APP BAR',
              style: TextStyle(fontSize: 15,
              color: Colors.white),

            ),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.teal,
              ),
            ),
            expandedHeight: 90,
          ),
         SliverToBoxAdapter(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Container(
               color: Colors.deepPurple,
               height: 400,

             ),
           ),
         ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.deepPurple,
                height: 400,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.deepPurple,
                height: 400,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.deepPurple,
                height: 400,

              ),
            ),
          ),

        ],
      ),
    );
  }
}


