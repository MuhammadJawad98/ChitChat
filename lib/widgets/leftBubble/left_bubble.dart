import 'package:chat_module_flutter/models/message_model.dart';
import 'package:chat_module_flutter/utils/utils.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../custom_shape.dart';

class LeftChatBubble extends StatelessWidget {
  const LeftChatBubble({Key? key, required this.child, required this.msg})
      : super(key: key);
  final Widget child;
  final MessageItem msg;

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: CustomPaint(
            painter: CustomShape(Colors.grey[700]!),
          ),
        ),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                child,
                const SizedBox(
                  height: 5,
                ),
                Text(
                  formatTime(msg.createdAt),
                  style: const TextStyle(color: Colors.white, fontSize: 9),
                  // textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ],
    ));

    return Padding(
      padding: const EdgeInsets.only(right: 50.0, left: 18, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 30),
          messageTextGroup,
        ],
      ),
    );
  }
}
