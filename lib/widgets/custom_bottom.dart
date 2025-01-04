import 'package:flutter/material.dart';
import 'package:note_three_app/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: KprimaryColor,
          ),
          child: Center(
            child: Text(
              'Add',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
