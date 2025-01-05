import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_three_app/cubits/add_not_cubit/add_not_cubit.dart';
import 'package:note_three_app/cubits/add_not_cubit/add_notes_states.dart';
import 'package:note_three_app/models/not_model.dart';
import 'package:note_three_app/widgets/custom_bottom.dart';
import 'package:note_three_app/widgets/custom_text_field.dart';

class ModalBottomSheetForm extends StatefulWidget {
  const ModalBottomSheetForm({super.key});

  @override
  State<ModalBottomSheetForm> createState() => _ModalBottomSheetFormState();
}

class _ModalBottomSheetFormState extends State<ModalBottomSheetForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNotsCubit, AddNotsStates>(
      listener: (context, state) {
        if (state is AddNotFailiur) {
          print(AddNotFailiur(errorMessage: state.errorMessage));
        }

        if (state is AddNotSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                hintText: 'title',
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                hintText: 'content',
                MaxLines: 6,
              ),
              SizedBox(
                height: 32,
              ),
              CustomBottom(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    NotModel notes = NotModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);

                    BlocProvider.of<AddNotsCubit>(context).addNot(notes);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
