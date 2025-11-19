import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomField extends StatelessWidget {
  final bool isNumber;
  final String input;
  final TextEditingController controller;
  final bool isShow;
  const CustomField({super.key, required this.input, required this.controller, required this.isShow, required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        inputFormatters: isNumber ? [FilteringTextInputFormatter.digitsOnly] : [],
        controller: controller,
        textAlign: TextAlign.center,
        obscureText: isShow,
        decoration: InputDecoration(
          labelText: input,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
      ),
    );
  }
}