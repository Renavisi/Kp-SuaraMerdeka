import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formKey = new GlobalKey<FormState>();

void validateAndSave(){
  final form = formKey.currentState;
  if (form.validate()){
    print('Form is valid');
  } else {
    print('Form is invalid');
  }
}

  @override
  Widget build(BuildContext context) {
    
    final logo = FlutterLogo();

    final username = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
      validator: (value) => value.isEmpty ? 'Username can\'t be empty' : null,
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
      validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 6.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: validateAndSave,
          //onPressed: (){
            //onpressed
          //},
          color: Colors.lightBlueAccent.shade100,
          child: Text("Log In", style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text("Forgot Password?", style: TextStyle(color: Colors.black54)),
      onPressed: (){
        //onpressed
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            username,
            SizedBox(height: 24.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}