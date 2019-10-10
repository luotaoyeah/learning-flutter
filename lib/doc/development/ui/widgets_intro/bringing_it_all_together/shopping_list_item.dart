import 'package:flutter/material.dart';

import 'product.dart';

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final bool inCart;
  final void Function({Product product, bool inCart}) onInCartChanged;

  ShoppingListItem({this.product, this.inCart, this.onInCartChanged}) : super(key: ObjectKey(product));

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          this.product.name[0],
          style: TextStyle(color: Colors.white, letterSpacing: -0.5),
        ),
        backgroundColor: inCart ? Colors.black54 : Theme.of(context).primaryColor,
      ),
      onTap: () {
        this.onInCartChanged(product: this.product, inCart: this.inCart);
      },
      title: Text(
        this.product.name,
        style: TextStyle(
          letterSpacing: -0.5,
          color: this.inCart ? Colors.black54 : null,
          decoration: this.inCart ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
