import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_three_app/cubits/add_not_cubit/add_not_cubit.dart';
import 'package:note_three_app/widgets/modal_bottom_sheet_form.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotsCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              right: 16,
              left: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: ModalBottomSheetForm(),
        ),
      ),
    );
  }
}
