import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/bottom_navigasi.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Item> items = [
    Item(name: "Sugar", price: 2000),
    Item(name: "Salt", price: 5000),
    Item(name: "Terasi", price: 10000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping cart"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(
                            child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 0),
    );
  }
}
