import 'package:flutter/material.dart';
class my_card extends StatelessWidget {


  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color? cardColor;

  my_card({required this.balance, required this.cardNumber ,
    required this.expiryMonth, required this.expiryYear,
    required this.cardColor
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 25.0),
      child: Container(
        padding: EdgeInsets.all(30),
        width: 300,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balance",
              style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text('\$' + balance.toString(),style: TextStyle(
                color: Colors.grey[200],
                fontSize: 30
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(cardNumber.toString(),
                style: TextStyle(
                    color: Colors.grey[200]
                ),), Text(expiryMonth.toString()+'/'+ expiryYear.toString(),style: TextStyle(
                  color: Colors.grey[200]
              ),)],
            ),
          ],
        ),
      ),
    );

  }
}