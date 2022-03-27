import 'package:flutter/material.dart';
import 'button.dart';

class View extends StatefulWidget {
  double num;

  View(this.num) {
    num = 0;
  }

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  double total = 0;
  void _PutIntheScreen(double x) {
    setState(() {
      total += x;
    });
  }

  Widget button(double number) {
    return Text(
      "$number",
      style: TextStyle(fontSize: 35),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          child: Card(
            color: Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            child: Align(
              child: button(4),
              alignment: Alignment(0.9, 0.5),
            ),
          ),
        ),
      ],
    );
  }
}
