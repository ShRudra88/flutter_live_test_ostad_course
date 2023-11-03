import 'package:flutter_live_test_ostad_course/report.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'report.dart';
import 'item.dart';
import 'list.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final Future<List<report>> products;

  MyHomePage({Key key, this.title, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather Info App"),
        ),
        body: Center(
          child: FutureBuilder<List<report>>(
            future: products,
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? List1(items: snapshot.data)
                  : Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }
}
