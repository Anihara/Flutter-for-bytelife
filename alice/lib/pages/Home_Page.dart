import 'package:alice/widgets/drawer.dart';
import 'package:alice/xyxy.dart';
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
          child: Text("inventory.dart"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
