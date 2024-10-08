import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/footer.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
          name: 'Sugar',
          price: 5000,
          imgproduct: 'assets/images/sugar.jpg',
          stok: 8,
          rating: 4.5),
      Item(
          name: 'Salt',
          price: 2000,
          imgproduct: 'assets/images/salt.jpg',
          stok: 12,
          rating: 4.7),
    ];

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
            final item = items[index];
            return ItemCard(item: item);
          },
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/item', extra: item);
      },
      child: Card(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Row(
            children: [
              Hero(
                tag: item.imgproduct,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    item.imgproduct,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(child: Text(item.name)),
              Expanded(
                child: Text(
                  item.price.toString(),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
