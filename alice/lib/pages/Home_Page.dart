import 'package:alice/models/Inventory.dart';
import 'package:alice/widgets/drawer.dart';
import 'package:alice/widgets/item_widget.dart';
import 'package:alice/xyxy.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final bool city = true;
  final String name = 'Shashi Kushwaha';
  final num temp = 18;
  final String place = 'Shimla';

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          // itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
              // item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
