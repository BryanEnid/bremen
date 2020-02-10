import 'package:flutter/material.dart';

class NavigatorUI extends StatefulWidget {
  @override
  _NavigatorUIState createState() => _NavigatorUIState();
}

class _NavigatorUIState extends State<NavigatorUI> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: Icon(Icons.format_paint),
            onPressed: () {
              setState(() {
                currentIndex = 0;
              });
            },
            color: currentIndex == 0 ? Colors.grey : Colors.grey[700],
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
              color: Colors.blue[400],
              iconSize: 40.0,
            ),
          ),
          IconButton(
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {
              setState(() {
                currentIndex = 2;
              });
            },
            color: currentIndex == 2 ? Colors.grey : Colors.grey[700],
          ),
        ],
      ),
    );
  }
}
