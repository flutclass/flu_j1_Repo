import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'coffee_tile.dart';
import 'coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List lstCoffeeType = [
    ['Cappuccino', true],
    ['Black', false],
    ['Latte', false]
  ];
  void   coffeeTapSelect(int index) {
    setState(() {
      for (int i =0; i<lstCoffeeType.length; i++){
        lstCoffeeType[i][1] = false;
      }
      lstCoffeeType[index][1]=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(fontSize: 36),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Find your coffee",
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: lstCoffeeType.length,
              itemBuilder: (context, index) {
                return Coffee_type(
                    coffee_type: lstCoffeeType[index][0],
                    isSelected: lstCoffeeType[index][1],
                    onTap:(){ coffeeTapSelect(index);} );
              },
            ),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeTile(
                  CoffeeImagePath:'assets/black.jpg',
                  CoffeeName:'Cappuccino',
                  CoffeePrice: '24',
              ),
              CoffeeTile(
                CoffeeImagePath:'assets/black.jpg',
                CoffeeName:'black',
                CoffeePrice: '15',
              ),
              CoffeeTile(
                CoffeeImagePath:'assets/latte.jpg',
                CoffeeName:'Latte',
                CoffeePrice: '54',
              ),
            ],
          ))
        ],
      ),
    );
  }
}
