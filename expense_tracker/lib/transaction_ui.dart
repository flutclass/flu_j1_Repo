import 'package:flutter/material.dart';

class TarnsactionUI extends StatelessWidget {
final String TransactionName;
final String money;
final String expenseOrIncome;
TarnsactionUI({required this.TransactionName,
required this.money , required this.expenseOrIncome});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.only( bottom: 12.0),
     child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 50,
          color: Colors.grey[200],
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[500]
                  ),
                  child: Center(
                    child: Icon(Icons.attach_money_outlined,
                    color: Colors.white,),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),



                Text(TransactionName,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700]
                ),),
                Text((expenseOrIncome=='expense' ? '-' : '+') + '\$' +money
                ,style: TextStyle(
                    color: (expenseOrIncome=='expense' ? Colors.red : Colors.green),
                  ),)
              ],
            ),
          ),
        ),
      ),
   );
  }
}

