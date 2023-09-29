import 'package:flutter/material.dart';

void main() => runApp(ImageFeedApp());

class ImageFeedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Feed'),
        ),
        body: ImageFeed(),
      ),
    );
  }
}

class ImageFeed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          child: Image.network("https://via.placeholder.com/150"),
        );
      },
    );
  }
}
