import 'package:flutter/material.dart';
import 'package:note_three_app/widgets/custom_bottom.dart';
import 'package:note_three_app/widgets/custom_text_field.dart';
import 'package:note_three_app/widgets/modal_bottom_sheet_form.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: ModalBottomSheetForm(),
      ),
    );
  }
}
