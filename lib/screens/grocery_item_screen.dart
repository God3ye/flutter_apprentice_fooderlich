import 'package:flutter/material.dart';

import '../models/models.dart';

class GroceryItemScreen extends StatefulWidget {
  final Function onCreate;
  final Function onUpdate;
  final GroceryItem? originalItem;
  final bool isUpdating;
  const GroceryItemScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating = (originalItem != null),
        super(key: key);

  @override
  State<GroceryItemScreen> createState() => _GroceryItemScreenState();
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
