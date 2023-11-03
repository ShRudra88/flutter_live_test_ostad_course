import 'package:flutter/material.dart';
import 'item.dart';
import 'report.dart';

class List1 extends StatelessWidget {
  final List<report> items;

  List1({Key key, this.items});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Item(item: items[index]);
      },
    );
  }
}
