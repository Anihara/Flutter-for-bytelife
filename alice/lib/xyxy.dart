import 'package:alice/pages/login_page.dart';
import 'package:alice/utilities/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/Home_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.gabriela().fontFamily,
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
