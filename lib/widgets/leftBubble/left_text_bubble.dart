import 'package:chat_module_flutter/models/message_model.dart';
import 'package:chat_module_flutter/widgets/leftBubble/left_bubble.dart';
import 'package:flutter/material.dart';

class LeftTextBubble extends StatelessWidget {
  final MessageItem msg;

  const LeftTextBubble({
    Key? key,
    required this.msg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LeftChatBubble(
      msg: msg,
      child: Text(
        msg.text!,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
