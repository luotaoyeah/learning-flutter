import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#card
class X020102010305 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: _buildCard(),
    );
  }

  Widget _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("1625 Main Street", style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("Chengdu, CA 99984"),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                "(408) 555-1212",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("costa@example.com"),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
