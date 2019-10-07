import 'package:flutter/material.dart';
import './ui/login_form.dart';

void main() => runApp(Login());
//Checking out something

//Trying Branching in Git
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = "Login";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        body: CustomLoginForm(),
      ),

    );
  }
}
