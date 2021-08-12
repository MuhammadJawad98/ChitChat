import 'package:chat_module_flutter/models/message_model.dart';
import 'package:chat_module_flutter/widgets/image_full_screen.dart';
import 'package:chat_module_flutter/widgets/leftBubble/left_bubble.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:get/get.dart';

class LeftVideoBubble extends StatelessWidget {
  const LeftVideoBubble({Key? key, required this.videoUrl,required this.msg}) : super(key: key);
  final String videoUrl;
  final MessageItem msg;
  @override
  Widget build(BuildContext context) {
    return LeftChatBubble(
      msg:msg,
      child: GestureDetector(
        onTap: () {
          log('clicked......');
          Get.to(ImageFullScreen(
            imageUrl: videoUrl,
          ));
        },
        child: Container(
          width: 150, height: 150,
          // padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey[500],
              image: DecorationImage(
                  image: NetworkImage(
                    videoUrl,
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(18.0)),

          // child: SizedBox(width: 150,height:150, child: Image.network(imageUrl, fit: BoxFit.cover,),),
        ),
      ),
    );
  }
}
