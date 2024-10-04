import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  final String msg;
  final String chatIndex;

  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: widget.chatIndex == "0" ? Colors.blueGrey.shade800 : Colors.grey.shade700,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.chatIndex == "0"
                      ? 'assets/images/img_34.png'
                      : 'assets/images/img_33.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    widget.msg,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                widget.chatIndex == "0"
                    ? const SizedBox.shrink()
                    : Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.thumb_up_alt_outlined, color: Colors.white),
                    SizedBox(width: 5),
                    Icon(Icons.thumb_down_alt_outlined, color: Colors.white),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
