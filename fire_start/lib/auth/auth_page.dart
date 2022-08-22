import 'package:fire_start/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:fire_start/pages/login_page.dart';
class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool ShowLoginPage = true;
  void ToggleScreen(){
    setState(() {
      ShowLoginPage = !ShowLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
      if(ShowLoginPage){
        return Login_page(showRegisterPage: ToggleScreen);
      }
      else {
        return RegisterPage(ShowLoginPage:ToggleScreen);
      }

  }
}
