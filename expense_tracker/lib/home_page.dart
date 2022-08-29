import 'package:expense_tracker/google_sheet.dart';
import 'package:expense_tracker/loading_circle.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/top_card.dart';
import 'package:expense_tracker/plus_button.dart';
import 'package:expense_tracker/transaction_ui.dart';
import 'dart:async';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _textControllerAMOUNT = TextEditingController();
  final _textControllerItem = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isIncome =false;

  void enterTransaction(){
    GoogleSheetApi.insert(_textControllerItem.text.trim(), _textControllerAMOUNT.text.trim(),
        _isIncome);
    setState(() {

    });
  }


  void newTransaction(){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context){
          return StatefulBuilder(
            builder: (BuildContext context, setState) {
              return AlertDialog(
                title: Text('N E W  T R A N S A C T I O N'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Expense'),
                          Switch(
                            value: _isIncome,
                            onChanged: (newValue) {
                              setState(() {
                                _isIncome = newValue;
                              });
                            },
                          ),
                          Text('Income'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Form(
                              key: _formKey,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Amount?',
                                ),
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Enter an amount';
                                  }
                                  return null;
                                },
                                controller: _textControllerAMOUNT,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'For what?',
                              ),
                              controller: _textControllerItem,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  MaterialButton(
                    color: Colors.grey[600],
                    child:
                    Text('Cancel', style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  MaterialButton(
                    color: Colors.grey[600],
                    child: Text('Enter', style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        enterTransaction();
                        Navigator.of(context).pop();
                      }
                    },
                  )
                ],
              );
            },
          );

    });
  }

  bool timerHasStarted = false;
  void startLoading(){
    timerHasStarted = true;
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(GoogleSheetApi.loading==false){
        setState(() {

        });
        timer.cancel();
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    if(GoogleSheetApi.loading==true && timerHasStarted==false){
      startLoading();
    }
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              TopCard(balance: (GoogleSheetApi.CalculateIncome() - GoogleSheetApi.CalculateExpense()).toString(),
              income: GoogleSheetApi.CalculateIncome().toString(),
              expense: GoogleSheetApi.CalculateExpense().toString()),

              Expanded(child:GoogleSheetApi.loading ==true ? LoadingCircle():  ListView.builder(
                  itemCount: GoogleSheetApi.currentTransactions.length,
                  itemBuilder: (context, index) {
                return TarnsactionUI(TransactionName: GoogleSheetApi.currentTransactions[index][0],
                money: GoogleSheetApi.currentTransactions[index][1],
                expenseOrIncome:GoogleSheetApi.currentTransactions[index][2] );
              },),),

            PlusButton(showDial: newTransaction),

            ],
          ),
        ),
      ),
    );
  }
}
