// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  const Emoji({Key? key}) : super(key: key);

  @override
  State<Emoji> createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  final List _emojiList = [
    {'emoji': Icons.emoji_emotions, 'name': 'Neutral'},
    {'emoji': Icons.emoji_nature, 'name': 'Sad'},
    {'emoji': Icons.emoji_emotions, 'name': 'Happy'},
    {'emoji': Icons.emoji_emotions, 'name': 'Angry'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _emojiList.length,
          itemBuilder: (context, index) {
            return SingleEmoji(
              emojiText: _emojiList[index]['name'],
              icon: _emojiList[index]['emoji'],
            );
          }),
    );
  }
}

class SingleEmoji extends StatelessWidget {
  String emojiText;
  IconData icon;
  SingleEmoji({
    Key? key,
    required this.emojiText,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.background,
            ),
            child: Icon(icon),
          ),
          SizedBox(height: 8),
          Text(
            emojiText,
            style: Theme.of(context).textTheme.subtitle2,
          )
        ],
      ),
    );
  }
}
