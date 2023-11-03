import 'package:flutter/material.dart';
import 'report.dart';

class Item extends StatelessWidget {


  final report item;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
          elevation: 5,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network(
                  this.item.imgUrl,
                  width: 200,
                ),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text("City: &{this.item.city}"),
                            Text("temperature: ${this.item.temperature}"),
                            Text("condition: ${this.item.condition}"),
                            Text("humidity: ${this.item.humidity}"),
                            Text("windspeed: ${this.item.windspeed}"),

                          ],
                        )))
              ]),
        ));
  }
}
