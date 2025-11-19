import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback pressed;
  const CustomButton({super.key, required this.buttonName, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return
      ElevatedButton(
        onPressed: pressed,
         child: Text(buttonName));
    
  }
}