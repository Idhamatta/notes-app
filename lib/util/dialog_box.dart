import 'package:flutter/material.dart';
import 'package:notes_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFF3c9e79),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Mengatur radius border
                  borderSide: BorderSide(
                    color: Colors.white, // Warna border saat field tidak aktif
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.white, // Warna border saat field tidak aktif
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Color(0xFF147c71), // Warna border saat field aktif
                    width: 2.0, // Ketebalan border saat field aktif
                  ),
                ),
                hintText: 'Add a new task',
                hintStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),

            // button -> save/cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // Button Save
              children: [
                MyButton(text: 'Save', onPressed: onSave),

                const SizedBox(
                  width: 8,
                ),
                // Button Cancel
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
