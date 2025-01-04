import 'package:flutter/material.dart';
import 'package:note_three_app/widgets/custom_app_bar.dart';
import 'package:note_three_app/widgets/custom_text_field.dart';

class EditNotBody extends StatelessWidget {
  const EditNotBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextField(hintText: 'Title'),
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hintText: 'content',
            MaxLines: 6,
          )
        ],
      ),
    );
  }
}
