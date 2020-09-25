import 'dart:async';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Numbering(),
    );
  }
}

class Numbering extends StatefulWidget {
  @override
  _NumberingState createState() => _NumberingState();
}

class _NumberingState extends State<Numbering> {
  @override
  Widget build(BuildContext context) {

    int increase = 0;

    final StreamController _streamController = StreamController<int>();

    return Scaffold(
      body: StreamBuilder(
        stream: _streamController.stream,
        initialData: increase,
        builder: (context, snapshot){
          return Text(snapshot.data.toString());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){_streamController.sink.add(++increase);},
      ),
    );
  }
}
