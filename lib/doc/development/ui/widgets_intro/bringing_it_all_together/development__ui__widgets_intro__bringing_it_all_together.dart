import 'package:flutter/material.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/bringing_it_all_together/product.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/bringing_it_all_together/shopping_list.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#bringing-it-all-together
class DevelopmentUiWidgetsIntroBringingItAllTogether extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bringing It All Together',
          style: TextStyle(letterSpacing: -0.5),
        ),
      ),
      body: ShoppingList(
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
