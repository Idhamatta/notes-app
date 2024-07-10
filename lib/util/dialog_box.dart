import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFF3c9e79),
      content: Container(
        height: 120,
        child: Column(
          children: [
            // get user input
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add a new task'),
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),

            // button -> save/cancel
            Row(
              children: [
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
