import 'package:flutter/material.dart';

import '02_01_01_06_product.dart';
import '02_01_01_06_shopping_list.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#bringing-it-all-together
class X0201010106 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bringing It All Together',
          style: TextStyle(letterSpacing: -0.5),
        ),
      ),
      body: X0201010106ShoppingList(
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
