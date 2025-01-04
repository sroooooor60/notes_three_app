import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_three_app/constants.dart';
import 'package:note_three_app/cubits/add_not_cubit/add_notes_states.dart';
import 'package:note_three_app/models/not_model.dart';

class AddNotsCubit extends Cubit<AddNotsStates> {
  AddNotsCubit() : super(AddNotInitial());

  addNot(NotModel notes) {
    emit(AddNotLoading());

    try {
      var notBox = Hive.box<NotModel>(KboxName);
      notBox.add(notes);
      emit(AddNotSuccess());
    } catch (e) {
      emit(AddNotFailiur(errorMessage: e.toString()));
    }
  }
}
