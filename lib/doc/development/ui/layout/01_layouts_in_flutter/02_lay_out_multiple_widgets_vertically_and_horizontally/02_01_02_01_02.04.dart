import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#nesting-rows-and-columns
class X020102010204 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final left = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '170 Reviews',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: -0.5,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Nesting Rows And Columns', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 300,
                  child: left,
                ),
                Expanded(
                  child: Image.asset(
                    'assets/pavlova.jpg',
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
