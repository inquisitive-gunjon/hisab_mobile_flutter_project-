import 'package:flutter/material.dart';
import 'package:hisab/data/model/noteDataModel.dart';

class NotesProvider extends ChangeNotifier {
  List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(Note note) {
    _notes.add(note);
    notifyListeners();
  }
}