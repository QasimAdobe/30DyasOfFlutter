import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.green,
      ),
      //initialRoute: "/home",
      routes: {
        "/": ((context) => LoginPage()),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
      },
    );
  }
}