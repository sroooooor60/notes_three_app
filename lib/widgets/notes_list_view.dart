import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_three_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_three_app/cubits/notes_cubit/notes_stats.dart';
import 'package:note_three_app/models/not_model.dart';
import 'package:note_three_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStats>(
      builder: (context, state) {
        List<NotModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];

        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: NoteItem(
                notes: notes[index],
              ),
            );
          },
        );
      },
    );
  }
}
