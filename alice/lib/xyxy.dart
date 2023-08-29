import 'package:alice/pages/login_page.dart';
import 'package:alice/utilities/routes.dart';
import 'package:alice/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:meta/dart2js.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
