import 'package:flutter/material.dart';

import 'development__ui__widgets_intro__bringing_it_all_together__product.dart';
import 'development__ui__widgets_intro__bringing_it_all_together__shopping_list.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#bringing-it-all-together
class X02010106 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bringing It All Together',
          style: TextStyle(letterSpacing: -0.5),
        ),
      ),
      body: X02010106ShoppingList(
        products: [
          const Product(name: "AAA"),
          const Product(name: "BBB"),
          const Product(name: "CCC"),
          const Product(name: "DDD"),
          const Product(name: "EEE"),
        ],
      ),
    );
  }
}
