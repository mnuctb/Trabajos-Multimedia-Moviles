import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;

  const CategoryItem({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 91, 104, 89)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.tune),
          const SizedBox(width: 8),
          Text(title),
        ],
      ),
    );
  }
}