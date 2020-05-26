import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('create Note'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Note title',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Note content',
            ),
          ),
        ],
      ),
    );
  }
}
