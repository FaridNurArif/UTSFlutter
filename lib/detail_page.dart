import 'package:flutter/material.dart';
import 'character.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailsScreen({Key? key, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topLeft,
                child: Hero(
                  tag: 'hero_image_${character.name}',
                  child: CircleAvatar(
                    radius: 600,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(character.image),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: ${character.name}',
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Role: ${character.role}',
                    style: const TextStyle(fontSize: 22),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Description: ${character.description}',
                    style: const TextStyle(fontSize: 22),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Weakness: ${character.weakness}',
                    style: const TextStyle(fontSize: 22),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          color: Colors.blue,
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            'Description:',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          character.description,
                          style: const TextStyle(fontSize: 22),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
