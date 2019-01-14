import 'package:flutter/material.dart';

import './login_page.dart';

class FrontPage extends StatefulWidget {
  static String tag = 'front-page';
  @override
  _FrontPageState createState() => new _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  static String tag = 'front-page';
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlutterLogo(
              size: 48.0,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
                  child: new Text("Program 1", style: new TextStyle(fontSize: 40.0), ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      shadowColor: Colors.lightBlueAccent.shade100,
                      elevation: 6.0,
                      child: MaterialButton(
                        minWidth: 100.0,
                        height: 50.0,
                        onPressed: (){
                          Navigator.of(context).pushNamed(LoginPage.tag);//onpressed
                        },
                        color: Colors.lightBlueAccent.shade100,
                        child: new Text("Log In", style: new TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    )
                    ),
                  )
                ],
                )
          ],
        ),
        
      ),
    );
      
  
  }
}