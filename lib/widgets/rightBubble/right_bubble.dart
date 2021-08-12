import 'package:chat_module_flutter/models/message_model.dart';
import 'package:chat_module_flutter/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../custom_shape.dart';

class RightChatBubble extends StatelessWidget {
  const RightChatBubble({Key? key, required this.child,required this.msg})
      : super(key: key);
  final Widget child;
  final MessageItem msg;
  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.cyan[900],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    child,
                    const SizedBox(height: 5,),
                    Wrap(
                      spacing: 1,
                      crossAxisAlignment: WrapCrossAlignment.end,
                      children:  [
                        Text(
                          formatTime(msg.createdAt),
                          style: const TextStyle(color: Colors.white, fontSize: 9),
                          // textAlign: TextAlign.center,
                        ),
                       const Icon(Ionicons.checkmark_done_outline,color: Colors.white,size:15 ,),
                      ],)
                  ],
                ),
              ),
            ),
            CustomPaint(painter: CustomShape(Colors.cyan[900]!)),
          ],
        ));

    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 50, top: 15, bottom: 5),
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
