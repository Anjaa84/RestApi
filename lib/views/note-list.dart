import 'package:flutter/material.dart';
import 'package:rest/models/note_for_list.dart';
import 'package:rest/views/notes_modify.dart';

class NoteList extends StatelessWidget {
  final notes = [
    new NoteForListing(
        noteID: "1",
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: 'Note1'),
    new NoteForListing(
        noteID: "2",
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: 'Note2'),
    new NoteForListing(
        noteID: "3",
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: 'Note3'),
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppList'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of
            (context).push(MaterialPageRoute(builder: (_)=>NoteModify()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
          separatorBuilder: (_, __) => Divider(
                height: 1,
                color: Colors.green,
              ),
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(
                notes[index].noteTitle,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              subtitle: Text(
                  "Last Edit in ${formatDateTime(notes[index].latestEditDateTime)}"),
            );
          },
          itemCount: notes.length),
    );
  }
}
