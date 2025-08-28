import 'package:flutter/material.dart';

class ChatBubble extends StatefulWidget {
  final String message;
  const ChatBubble({super.key, required this.message});

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  Color _color = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _color = Colors.red; // change to red when force pressed
        });
      },
      onTapUp: (_) {
        setState(() {
          _color = Colors.blueAccent; // reset when released
        });
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: _color,
        ),
        child: Text(
          widget.message,
          style: TextStyle(fontSize: 10, color: Colors.white),
        ),
      ),
    );
  }
}
