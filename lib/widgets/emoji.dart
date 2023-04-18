// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  const Emoji({Key? key}) : super(key: key);

  @override
  State<Emoji> createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  final List _emojiList = [
    {'emoji': '🙂', 'name': 'Neutral'},
    {'emoji': '😞', 'name': 'Sad'},
    {'emoji': '🤪', 'name': 'Happy'},
    {'emoji': '👺', 'name': 'Angry'},
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
              emojiFace: _emojiList[index]['emoji'],
            );
          }),
    );
  }
}

class SingleEmoji extends StatelessWidget {
  String emojiText;
  String emojiFace;
  SingleEmoji({
    Key? key,
    required this.emojiText,
    required this.emojiFace,
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
            child: Center(
              child: Text(
                emojiFace,
                style: TextStyle(fontSize: 20),
              ),
            ),
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
