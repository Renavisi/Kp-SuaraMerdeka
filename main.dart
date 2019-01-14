import 'package:flutter/material.dart';

import './pages/front_page.dart';
import './pages/login_page.dart';

void main () => runApp(new MyApp());

class MyApp extends StatelessWidget {

final routes = <String, WidgetBuilder> {
  FrontPage.tag: (context) => FrontPage(),
  LoginPage.tag: (context) => LoginPage(),
};

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Program coba 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        //fontFamily: 'Nunito',
      ),
      home: FrontPage(),
      routes: routes,
    );
  }
}
