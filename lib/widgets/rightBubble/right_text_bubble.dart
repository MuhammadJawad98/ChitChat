import 'package:chat_module_flutter/models/message_model.dart';
import 'package:chat_module_flutter/widgets/rightBubble/right_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RightTextBubble extends StatelessWidget {
  const RightTextBubble({
    Key? key,
    required this.msg,
  }) : super(key: key);
  final MessageItem msg;

  @override
  Widget build(BuildContext context) {
    return RightChatBubble(
      msg: msg,
      child: Text(
        msg.text!,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
