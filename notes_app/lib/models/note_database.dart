import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:notes_app/models/note.dart';
import 'package:path_provider/path_provider.dart';
 
class NoteDatabase extends ChangeNotifier{
  static late Isar isar;

  static Future init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [NoteSchema],
      directory: dir.path,
    );
  }

  final List<Note> currentNotes = [];

  // C R E A T E
  Future<void> addNote(String text) async {
    final newNote = Note()..text = text;
    
    await isar.writeTxn(() => isar.notes.put(newNote));

    fetchNotes();
  }

  // R E A D
  Future<void> fetchNotes()async {
    List<Note> fetchedNotes = await isar.notes.where().findAll();
    currentNotes.clear();
    currentNotes.addAll(fetchedNotes);

    notifyListeners();
  }

  // U P D A T E
  Future<void> updateNote(int id, String newText) async {
    final existingNote = await isar.notes.get(id);

    if(existingNote != null) {
      existingNote.text = newText;
      await isar.writeTxn(() => isar.notes.put(existingNote));
      await fetchNotes();
    }
  }

  // D E L E T E
  Future<void> deleteNote(int id) async {
    await isar.writeTxn(() => isar.notes.delete(id));
    await fetchNotes();
  }
}
