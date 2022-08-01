import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Login_Page()));
}

class Login_Page extends StatelessWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(Icons.android,
                size: 100,

              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Hello Again",
                style: GoogleFonts.bebasNeue(
                  fontSize: 50
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome Back you have missed",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(
                      color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(9)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only( left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email"
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(
                          color: Colors.white
                      ),
                      borderRadius: BorderRadius.circular(9)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only( left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password"
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Center(
                    child: Text("Sign In",style: TextStyle(color: Colors.white,
                    fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not memember ? ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  Text("Register Now",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.blue),),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
