import 'package:alice/models/Inventory.dart';
import 'package:alice/widgets/drawer.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisSpacing: 16, crossAxisSpacing: 16),
            itemBuilder: (context, index) {
              final item = CatalogModel.item[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: GridTile(
                  header: Container(
                    child: Text(
                      item.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 200, 165, 138),
                        border: Border()),
                  ),
                  child: Image.network(item.image, fit: BoxFit.cover),
                  footer: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 220, 105, 34),
                          border: Border()),
                      child: Text(
                        item.price.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              );
            },
            itemCount: CatalogModel.item.length,
          )),
      drawer: MyDrawer(),
    );
  }
}
