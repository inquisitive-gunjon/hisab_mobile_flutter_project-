import 'package:flutter/material.dart';
import 'package:hisab/provider/noteProvider.dart';
import 'package:provider/provider.dart';
import '../../data/model/noteDataModel.dart';


class NoteDetailScreen extends StatefulWidget {
  final Note? note;

  NoteDetailScreen({this.note});

  @override
  _NoteDetailScreenState createState() => _NoteDetailScreenState();
}

class _NoteDetailScreenState extends State<NoteDetailScreen> {
  late TextEditingController _titleController;
  late TextEditingController _detailsController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.note?.title ?? '');
    _detailsController = TextEditingController(text: widget.note?.details ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _detailsController,
              maxLines: null,
              decoration: InputDecoration(labelText: 'Details'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final notesProvider = Provider.of<NotesProvider>(context, listen: false);
                final title = _titleController.text.isEmpty ? null : _titleController.text;
                final date = DateTime.now().toString(); // You can format the date as needed
                final details = _detailsController.text;

                final newNote = Note(title: title, date: date, details: details);

                if (widget.note == null) {
                  // Adding a new note
                  notesProvider.addNote(newNote);
                }

                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}