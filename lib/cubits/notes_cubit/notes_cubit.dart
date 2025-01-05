import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_three_app/constants.dart';
import 'package:note_three_app/cubits/notes_cubit/notes_stats.dart';
import 'package:note_three_app/models/not_model.dart';

class NotesCubit extends Cubit<NotesStats> {
  NotesCubit() : super(NotsInitial());

  List<NotModel>? notes;
  fitchNots() {
    var notsBox = Hive.box<NotModel>(kBoxName);

    notes = notsBox.values.toList();
    emit(NotsSuccess());
  }
}
