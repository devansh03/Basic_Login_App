import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class _LoginData {
  String name = "";
  String password = "";
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final _formKey = GlobalKey<FormState>();

   _LoginData _data = new _LoginData();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //add image
          Center(
            child: Image.asset(
              "Images/face.png",
              width: 90,
              height: 90,
              color: Colors.white,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                      gapPadding: 3.3,
                      borderRadius: BorderRadius.circular(3.3)
                  )
              ),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return "Please Enter Name";
                }
                else {
                  // show something
                  _data.name = value;
                  print("Data Name: ${_data.name}");
                }
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        gapPadding: 3.3,
                        borderRadius: BorderRadius.circular(3.3)
                    )
                ),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please Enter Password";
                  }
                  else {
                    // show something
                    _data.password = value;
                    print("Data Password: ${_data.password}");
                  }
                }
            ),
          ),
          // add buttons
          new Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Add the actual buttons
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        setState(() {
                          _data.name = _data.name;
                        });
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text(
                            "All is very Good")));
                      }
                    },
                    child: Text("Submit"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        // clear
                        _formKey.currentState.reset();
                        setState(() {
                          _data.name = "";
                        });
                      }
                    },
                    child: Text("Clear"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: _data.name.isEmpty ? Text("") : Text(
              "Hello ${_data.name}", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24.0,),)),
          ),
        ],

      ),
    );
  }
}
