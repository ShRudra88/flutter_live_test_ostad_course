import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyShoppingList(),
    );
  }
}

class MyShoppingList extends StatelessWidget {
  final List<String> Items = [
    'Apples',
    'Bananas',
    'Milk',
    'Bread',
    'Eggs',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Shopping List'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Implement cart functionality here
            },
          ),
        ],
      ),
      body: ListView(
        children: Items.map((item) => ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text(item),
          onTap: () {},
        )).toList(),
      ),
    );
  }
}
