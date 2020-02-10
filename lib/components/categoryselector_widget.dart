import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int currentIndex = 0;
  final List<String> categories = [
    'ALL',
    'PAINT',
    'REPAIR',
    'CLEANING',
    'OTHERS',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Container(
              // CHECK BOX SIZE
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color:
                        index == currentIndex ? Colors.white : Colors.white60,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
