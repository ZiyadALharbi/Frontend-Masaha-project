import 'package:flutter/material.dart';

class PopUpMessage extends StatelessWidget {
  const PopUpMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Please fill in the blanks'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
          child: const Text('Close'),
        ),
      ],
    );
  }
}