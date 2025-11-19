import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  final String label;
  final String info;
  final Color backgroundColor;
  final Color borderColor;

  const TextInfo({
    super.key,
    required this.label,
    required this.info,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            info,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}