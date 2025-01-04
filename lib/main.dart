import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_three_app/constants.dart';
import 'package:note_three_app/models/not_model.dart';
import 'package:note_three_app/views/notes_view.dart';

void main() {
  Hive.initFlutter();
  Hive.registerAdapter(NotModelAdapter());
  Hive.openBox<NotModel>(KboxName);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      home: NotesView(),
    );
  }
}
