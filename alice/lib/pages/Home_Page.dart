// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:alice/models/Inventory.dart';
import 'package:alice/widgets/drawer.dart';
import 'package:alice/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

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
      backgroundColor: MyTheme.whiiittte,
      body: SafeArea(
        child: Container(
          padding: Vx.m24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CatalogHeader(),
              if (CatalogModel.item != null && CatalogModel.item.isNotEmpty)
                Cataloglist().expand()
              else
                Center(child: CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

//  const CatalogHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Catalog App".text.xl5.extraBold.color(MyTheme.darkBluishColor).make(),
        "Trending Products".text.xl2.semiBold.color(MyTheme.creamColor).make()
      ],
    );
  }
}

class Cataloglist extends StatelessWidget {
  const Cataloglist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.item.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.item[index];
          return CatalogItem(catalog: catalog);
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem(
      {super.key, required this.catalog}); //: assert(catalog!= null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(
          image: catalog.image),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.bold.color(MyTheme.darkBluishColor).make(),
              catalog.desc.text.textStyle(context.labelMedium).make(),
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                buttonPadding: EdgeInsets.symmetric(),
                children: [
                 "\$${catalog.price}".toString().text.textStyle(context.bodyLarge).xl.bold.make(),
                
                 ElevatedButton(
                onPressed: () {}, child: "Buy".text.make(),
                 style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)))
                 ),
                // MyTheme.elevatedButtonStyle(context))
                 )
                ],
              )
            ],

        ))
        ],
    )).white.roundedLg.square(150).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .roundedLg
        .color(MyTheme.creamColor)
        .make()
        .p20().w32(context);
  }
}
