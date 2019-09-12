import 'package:flutter/material.dart';

import '02_01_01_06_product.dart';
import '02_01_01_06_shopping_list_item.dart';

class X02010106ShoppingList extends StatefulWidget {
  final List<Product> products;

  X02010106ShoppingList({this.products});

  @override
  State<X02010106ShoppingList> createState() => _X02010106ShoppingListState();
}

class _X02010106ShoppingListState extends State<X02010106ShoppingList> {
  final Set<Product> _products = Set();

  void _handleInCartChanged({Product product, bool inCart}) {
    setState(() {
      if (inCart) {
        _products.remove(product);
      } else {
        _products.add(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: widget.products.map(
          (product) => X02010106ShoppingListItem(
            product: product,
            inCart: _products.contains(product),
            onInCartChanged: _handleInCartChanged,
          ),
        ),
      ).toList(),
    );
  }
}
