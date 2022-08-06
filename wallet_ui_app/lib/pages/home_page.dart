import 'package:flutter/material.dart';
import 'package:wallet_ui_app/utils/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui_app/utils/my_button.dart';
import 'package:wallet_ui_app/utils/list_tile.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home,
            size: 32,color: Colors.blue[300],)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings,
            size: 32)),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Cards",
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    child: Icon(Icons.add),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[400]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              color: Colors.transparent,
              child:PageView(
                controller: _controller,
                scrollDirection:  Axis.horizontal,
                children: [
                  my_card(
                    balance: 5250.20,
                    cardNumber: 122455141,
                    expiryYear: 29,
                    expiryMonth: 13,
                    cardColor: Colors.deepPurple[300],
                  ),
                  my_card(
                    balance: 2331.67,
                    cardNumber: 23313141,
                    expiryYear:  21,
                    expiryMonth: 15,
                    cardColor: Colors.blue[300],
                  ),
                  my_card(
                    balance: 531.3312,
                    cardNumber: 3313132,
                    expiryMonth: 8,
                    expiryYear: 26,
                    cardColor: Colors.green[300],
                  ),

                ],
              ) ,

            ),
            SizedBox(
              height: 15,
            ),
            SmoothPageIndicator(controller: _controller, count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade600
            ),),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal:  25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    imagePath: 'icon/send-money.png',
                    ButtonCaption: "SEND",
                  ),
                  MyButton(
                    imagePath: 'icon/bill.png',
                    ButtonCaption: "BILLS",
                  ),
                  MyButton(
                    imagePath: 'icon/credit-card.png',
                    ButtonCaption: "PAY",
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            list_tile(
              IconImagePath: 'icon/statistics.png',
              tileTitle: "Statistics",
              tileSubTitle: "Payments and Income",
            ),
            list_tile(
              IconImagePath: 'icon/transaction.png',
              tileTitle: "Transaction",
              tileSubTitle: "Transaction History",
            ),





            // stats- transactions
          ],
        ),
      ),
    );
  }
}






