import 'package:flutter/material.dart';

import 'product.dart';
import 'shopping_list_item.dart';

class ShoppingList extends StatefulWidget {
  final List<Product> products;

  ShoppingList({this.products});

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final Set<Product> _shoppingCart = Set();

  void _handleInCartChanged({Product product, bool inCart}) {
    setState(() {
      if (!inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: widget.products.map(
          (product) => ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            onInCartChanged: _handleInCartChanged,
          ),
        ),
      ).toList(),
    );
  }
}
