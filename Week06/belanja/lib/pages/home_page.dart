import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belanja'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final Item item = items[index];
            return Card(
              child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item');
              },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(children: [
                    Expanded(child: Text(item.name ?? 'Unknown Item')),
                    Expanded(
                        child: Text(
                      item.price.toString(),
                      textAlign: TextAlign.end,
                    ))
                  ]),
                ),
              ),
            );
          },
        ),
      )
    );
  }
    
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];
}
