import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_three_app/constants.dart';
import 'package:note_three_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_three_app/models/not_model.dart';
import 'package:note_three_app/simpl_block_opserver.dart';
import 'package:note_three_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NotModelAdapter());
  await Hive.openBox<NotModel>(kBoxName);
  Bloc.observer = SimplBlockOpserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: false,
        ),
        home: NotesView(),
      ),
    );
  }
}
