import 'package:flutter/material.dart';

import 'package:todo_list/models/ui_colors.dart';
import '../models/text_style.dart';

void main() {
  runApp(MainTab());
}

class MainTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: secondaryBackgroundColor,
            border: Border.all(
              color: secondaryBackgroundColor,
              width: 20,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Container(
            height: 400,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(-.8, -.2),
                  child: Text(
                    'Hello, John',
                    style: mainTabTextStyle,
                  ),
                ),
                Align(
                  alignment: Alignment(0, 1.9),
                  child: Container(
                    height: 75,
                    width: 75,
                    child: FloatingActionButton(
                      onPressed: null,
                      backgroundColor: buttonBackgroundColor,
                      child: Icon(
                        Icons.add,
                        size: 75,
                      ),
                    ),
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
