import 'package:flutter/material.dart';

import 'development__ui__widgets_intro__bringing_it_all_together__product.dart';

class X02010106ShoppingListItem extends StatelessWidget {
  final Product product;
  final bool inCart;
  final void Function({Product product, bool inCart}) onInCartChanged;

  X02010106ShoppingListItem({this.product, this.inCart, this.onInCartChanged}) : super(key: ObjectKey(product));

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          product.name[0],
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: inCart ? Colors.black54 : Theme.of(context).primaryColor,
      ),
      onTap: () {
        onInCartChanged(product: product, inCart: inCart);
      },
      title: Text(
        product.name,
        style: TextStyle(
            letterSpacing: -0.5,
            color: inCart ? Colors.black54 : null,
            decoration: inCart ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
