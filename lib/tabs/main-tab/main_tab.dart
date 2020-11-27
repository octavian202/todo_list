import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:todo_list/models/ui_colors.dart';
import '../../models/text_style.dart';
import '../../task.dart';

void main() {
  runApp(MainTab());
}

class MainTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: double.infinity,
            margin: EdgeInsets.only(top: 205),
            child: ListView(
              padding: EdgeInsets.only(top: 80),
              children: getList(),
            ),
          ),
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
              color: secondaryBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Container(
              height: 200,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-.6, -.2),
                    child: Text(
                      'Hello, John',
                      style: mainTabTextStyle,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 1.467),
                    child: Container(
                      height: 80,
                      width: 80,
                      child: FloatingActionButton(
                        elevation: 0,
                        onPressed: null,
                        backgroundColor: buttonBackgroundColor,
                        child: Icon(
                          Icons.add,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getList() {
    return [
      Task(),
      Task(),
      Task(),
      Task(),
    ];
  }
}
