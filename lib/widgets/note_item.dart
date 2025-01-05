import 'package:flutter/material.dart';
import 'package:note_three_app/models/not_model.dart';
import 'package:note_three_app/views/edit_not_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});

  final NotModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return EditNotView();
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    notes.title,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text(
                  notes.subTitle,
                  style: TextStyle(fontSize: 24),
                ),
                trailing: Icon(
                  Icons.delete,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  notes.date,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
