import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;
  const GroceryListScreen({Key? key, required this.manager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groceryItems = manager.groceryItems;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final items = groceryItems[index];
          //TODO: Dismissiable
          //TODO: InkWell
          return GroceryTile(
            key: Key(items.id),
            item: items,
            onComplete: (change) {
              if (change != null) {
                manager.completeItem(index, change);
              }
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
      ),
    );
  }
}
