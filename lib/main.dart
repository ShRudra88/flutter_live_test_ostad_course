import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedButtonIndex = -1;

  void _showSnackBar(String label) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Size $label selected'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Size Selector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 0;
                      _showSnackBar('S');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedButtonIndex == 0 ? Colors.yellow : null,
                  ),
                  child: Text('S'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 1;
                      _showSnackBar('M');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedButtonIndex == 1 ? Colors.yellow : null,
                  ),
                  child: Text('M'),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 2;
                      _showSnackBar('L');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedButtonIndex == 2 ? Colors.yellow : null,
                  ),
                  child: Text('L'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 3;
                      _showSnackBar('XL');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedButtonIndex == 3 ? Colors.yellow : null,
                  ),
                  child: Text('XL'),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 4;
                      _showSnackBar('XXL');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedButtonIndex == 4 ? Colors.yellow : null,
                  ),
                  child: Text('XXL'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedButtonIndex = 5;
                      _showSnackBar('XXXL');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedButtonIndex == 5 ? Colors.yellow : null,
                  ),
                  child: Text('XXXL'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
