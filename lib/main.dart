import 'package:flutter/material.dart';
import 'package:flutter_sqlite/pages/detail_page.dart';
import 'package:flutter_sqlite/pages/taco_page.dart';
import 'package:flutter_sqlite/util/util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TacoPage(),
      routes: <String, WidgetBuilder>{
        Util.kRouteHomePage: (BuildContext context) => TacoPage(),
        Util.kRouteDetail: (BuildContext context) => DetailPage(),
      },
    );
  }
}
