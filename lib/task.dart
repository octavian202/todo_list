import 'package:flutter/material.dart';

import 'package:todo_list/models/ui_colors.dart';

class Task extends StatelessWidget {
  /*final String title;
  final String description;

  Task({@required this.title, @required this.description});*/

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(
        bottom: 15,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: appbarColor,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
