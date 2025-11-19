import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String name;
  final String language;
  final String premiered;
  final String poster;
  const CustomTile({super.key, required this.name, required this.language, required this.poster, required this.premiered});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(76, 40, 79, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            poster,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text("Bahasa $language - Premiere: $premiered"),
        // onTap: onTap,
      ),
    );
  }
}