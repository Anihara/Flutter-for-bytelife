import 'package:alice/models/Inventory.dart';
import 'package:flutter/material.dart';
import 'package:alice/pages/Home_Page.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      // elevation: 0.0,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}





      //      onTap: () => Navigator.pushNamed<void>(context, '/detail', arguments: item,),
      //      onLongPress: (){
        //        showDialog(
          //          barrierDismissible: false,
          //            context: context,
          //              builder:(context)=>AlertDialog(
            //                contentPadding: EdgeInsetsDirectional.all(10),
            //                    shape: RoundedRectangleBorder(),
