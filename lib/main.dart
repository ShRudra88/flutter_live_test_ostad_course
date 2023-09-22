import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     //debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 70,
          leading: Icon(Icons.add_business_rounded ),
          backgroundColor: Colors.green,
          title : Text('Home'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
          ],
        ),
                body : Center(
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: Column(
                    children: [
                      Text('This is mod 5 Assignment', style : TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      )),
                      Row(
                        children: [
                          Text('My ', style : TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 30,
                          )),
                          Text('phone ', style : TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 15,
                          )),
                          Text('name ', style : TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          )),
                          Text('Your phone name', style : TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                          )),
                        ],
                      ),
                    ],
            ),
                ),
          ),
      ),
    );
  }
}
