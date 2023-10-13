import 'package:flutter/material.dart';

void main() => runApp(ItemSelectionApp());

class ItemSelectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatefulWidget {
  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
  List<bool> selectedItems = List.filled(5, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              setState(() {
                selectedItems[index] = !selectedItems[index];
              });
            },
            tileColor: selectedItems[index] ? Colors.blue : null,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int selectedCount = selectedItems.where((selected) => selected).length;
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Selected Items'),
                content: Text('Number of selected items : $selectedCount'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
