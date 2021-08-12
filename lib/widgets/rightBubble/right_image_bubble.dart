import 'package:chat_module_flutter/models/message_model.dart';
import 'package:chat_module_flutter/widgets/image_full_screen.dart';
import 'package:chat_module_flutter/widgets/rightBubble/right_bubble.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:get/get.dart';


class RightImageBubble extends StatelessWidget {
  const RightImageBubble({Key? key, required this.msg}) : super(key: key);
  final MessageItem msg;
  @override
  Widget build(BuildContext context) {
    return RightChatBubble(
      msg: msg,
      child: GestureDetector(
        onTap: (){
          log('clicked......');
          Get.to(ImageFullScreen(imageUrl: msg.imagUrl!,));
        },
        child: Hero(
          tag: "msg-image",
          child: Container(
            width: 150, height: 150,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.cyan[900],
              image: DecorationImage(
                  image: NetworkImage(
                    msg.imagUrl!,
                  ),
                  fit: BoxFit.cover),
              borderRadius:  BorderRadius.circular(18.0),
            ),

            // child: SizedBox(width: 150,height:150, child: Image.network(imageUrl, fit: BoxFit.cover,),),
          ),
        ),
      ),
    );
  }
}
