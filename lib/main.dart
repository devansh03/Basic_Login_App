import 'package:flutter/material.dart';
import './ui/login_form.dart';
import './ui/about_creator.dart';

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
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () => debugPrint('sometihns')),
            IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  var router_about_creator = new MaterialPageRoute(
                      builder: (BuildContext context) => AboutCreator());
                  Navigator.of(context).push(router_about_creator);
                }),
          ],
        ),
        backgroundColor: Colors.blueGrey,
        body: CustomLoginForm(),
      ),
    );
  }
}
