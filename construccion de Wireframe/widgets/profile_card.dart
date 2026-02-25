import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String description;
  final String age;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.description,
    required this.age,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(description),
                  const SizedBox(height: 5),
                  Text(age),
                ],
              ),
            ),
            const Icon(Icons.favorite_border),
          ],
        ),
      ),
    );
  }
}