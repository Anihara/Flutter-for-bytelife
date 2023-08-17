import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final bool city = true;
  final String name = 'Shashi Kushwaha';
  final num temp = 18;
  final String place = 'Shimla';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
              "Welcome to $name ki padhai bhaiyo, and I'm a Male living in $place at $temp degree celcious temperature"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
