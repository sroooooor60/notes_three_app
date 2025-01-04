import 'package:flutter/material.dart';
import 'package:note_three_app/widgets/edit_not_body.dart';

class EditNotView extends StatelessWidget {
  const EditNotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotBody(),
    );
  }
}
