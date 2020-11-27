import 'package:flutter/material.dart';

import 'tabs/main-tab/main_tab.dart';
import './models/ui_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: Scaffold(
            body: TabBarView(
              children: [
                Container(
                  color: Colors.yellow,
                ),
                MainTab(),
                Container(
                  color: Colors.green,
                )
              ],
            ),
            appBar: AppBar(
              bottom: PreferredSize(
                preferredSize: Size(100, 10),
                child: Container(
                  color: appbarColor,
                  width: double.infinity,
                  height: 60,
                  child: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.home),
                      ),
                      Tab(
                        icon: Icon(Icons.rss_feed_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.perm_camera_mic),
                      ),
                    ],
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.all(5.0),
                    indicatorColor: Colors.transparent,
                  ),
                ),
              ),
              backgroundColor: appbarColor,
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yes',
    );
  }
}
