import 'package:chat_test/components/workordercard_widget.dart';
import 'package:chat_test/models/workorders_model.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    // print(workOrders.length);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ...(workOrders as List<WorkOrder>)
            .map((item) => WorkOrderCard(item))
            .toList()
      ],
    );
  }
}
