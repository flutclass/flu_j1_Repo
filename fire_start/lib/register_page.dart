import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
class RegisterPage extends StatefulWidget {
  final VoidCallback ShowLoginPage;
  RegisterPage({required this.ShowLoginPage});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Future signUp() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/back.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstATop),
                )

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.home,
                  size: 100,

                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Hello There",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 50
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Register With your details",
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
                        controller: _emailController,
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
                        controller: _passwordController,
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
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Confirm Password"
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: signUp,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(12),

                      ),
                      child: Center(
                        child: Text("Sign Up",style: TextStyle(color: Colors.white,
                            fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
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
                    GestureDetector(
                      onTap: widget.ShowLoginPage,
                      child: Text("Login Now",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.blue),),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
