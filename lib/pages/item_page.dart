import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Item itemArgs = (ModalRoute.of(context)!.settings.arguments) as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Item"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Container(
        child: Column(children: [
          Text(itemArgs.name),
          Text(itemArgs.price.toString()),
        ]),
      ),
    );
  }
}
