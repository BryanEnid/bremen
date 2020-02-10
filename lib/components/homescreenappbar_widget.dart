import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // Don't show the leading button
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              // onPressed: () => Navigator.pop(context),
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.white),
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              // onPressed: () => Navigator.pop(context),
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.white),
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
          // Your widgets here
        ],
      ),
    );
    // AppBar(
    //   titleSpacing: 0.0,
    //   backgroundColor: Colors.transparent,
    //   elevation: 0.0,
    //   // flexibleSpace: CategorySelector(),
    //   leading: Container(
    //     decoration: BoxDecoration(
    //       color: Colors.red,
    //       borderRadius: BorderRadius.circular(100),
    //     ),
    //     child: IconButton(
    //       splashColor: Colors.transparent,
    //       hoverColor: Colors.transparent,
    //       highlightColor: Colors.transparent,
    //       iconSize: 30,
    //       icon: Icon(Icons.menu),
    //       color: Colors.white,
    //       onPressed: () {
    //         print("asd");
    //       },
    //     ),
    //   ),
    //   actions: <Widget>[
    //     IconButton(
    //       iconSize: 30,
    //       icon: Icon(Icons.search),
    //       color: Colors.white,
    //       onPressed: () {},
    //     ),
    //   ],
    // );
  }
}
