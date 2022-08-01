import 'package:flutter/material.dart';
class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only( left:  12.0 , bottom:  34.0),
      child: Container(
        width: 200,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset("assets/latte.jpg"),

            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical:12.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Latte",style: TextStyle(fontSize: 20),),
                  Text(" with almond milk",style: TextStyle(
                    color: Colors.grey[700],
                  ),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$4.9"),
                Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.orange,
                    
                  ),
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}
