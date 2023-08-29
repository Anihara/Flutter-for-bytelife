import 'package:alice/models/Inventory.dart';
import 'package:alice/widgets/drawer.dart';
import 'package:alice/widgets/item_widget.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = 'Shashi Kushwaha';

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final fetchJson =
        await rootBundle.loadString("assets/files/fetch_store.json");
    final decodeData = jsonDecode(fetchJson);
    var productsData = decodeData["products"];
    // ignore: unused_local_variable
    var fromMap = List.from(productsData)
        .map<Item>(
            (itemMap) => Item.fromMap(itemMap)) // Change "Item" to "itemMap"
        .toList();
    setState(() {
      CatalogModel.item = fromMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView.builder(
            itemCount: CatalogModel.item.length,
            // itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.item[index],
                // item: dummyList[index],
              );
            },
          )),
      drawer: MyDrawer(),
    );
  }
}
