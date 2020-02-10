import 'package:flutter/material.dart';
import '../models/workorders_model.dart';

class WorkOrderCard extends StatelessWidget {
  final WorkOrder order;
  WorkOrderCard(this.order);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: Color.fromARGB(255, 15, 15, 15),
        // border: Border.all(
        //   color: Colors.grey[800],
        // ),
      ),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: AspectRatio(
                aspectRatio: 5 / 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.topCenter,
                      image: ExactAssetImage('assets/${order.pictures[0]}'),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    '${order.apartment.name} - Apt: ${order.aptNumber} ',
                    style: TextStyle(
                      wordSpacing: 2,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Text(
                      order.description,
                      style: TextStyle(
                        wordSpacing: 2,
                        fontSize: 16,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Pictures",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(
                          Icons.format_paint,
                          color: order.type[0] == 'Paint'
                              ? Colors.white
                              : Colors.white24,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(
                          Icons.build,
                          color: order.type[1] == 'Repair'
                              ? Colors.white
                              : Colors.white24,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(
                          Icons.weekend,
                          color: order.type[2] == 'Clean'
                              ? Colors.white
                              : Colors.white24,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "Other",
                            style: TextStyle(
                              color: order.type[3] == 'Other'
                                  ? Colors.white
                                  : Colors.white24,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
