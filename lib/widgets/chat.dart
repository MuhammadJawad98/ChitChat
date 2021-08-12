import 'package:chat_module_flutter/controller/text_controller.dart';
import 'package:chat_module_flutter/models/message_model.dart';
import 'package:chat_module_flutter/widgets/leftBubble/left_image_bubble.dart';
import 'package:chat_module_flutter/widgets/leftBubble/left_text_bubble.dart';
import 'package:chat_module_flutter/widgets/rightBubble/right_image_bubble.dart';
import 'package:chat_module_flutter/widgets/rightBubble/right_text_bubble.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({
    Key? key,
    required this.data,
    required this.userId,

  }) : super(key: key);
  final MessageItem data;
  final dynamic userId;

  @override
  Widget build(BuildContext context) {
    return userId == data.user.id
        ? data.text!.isNotEmpty
            ? RightTextBubble(
                msg: data,
              )
            : RightImageBubble(
                msg: data,
              )
        : data.text!.isNotEmpty
            ? LeftTextBubble(
                msg: data,
              )
            : LeftImageBubble(
                msg: data,
              );
  }
}
