import 'package:chat_module_flutter/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChitChatController extends GetxController {
  var text = "".obs;

  void setText(updateText) {
    text = updateText;
  }

  void clearText() {
    text = RxString("");
  }

  // var leftBubbleColor = const Color(0xFF006064).obs;
  // var rightBubbleColor = const Color(0xFF616161).obs;
  //
  // void updateLeftBubbleColor(Color leftContainerColor) {
  //   leftBubbleColor = leftContainerColor;
  // }
  //
  // void updateRightBubbleColor(Color rightContainerColor) {
  //   rightBubbleColor = rightContainerColor as Rx<Color>;
  // }
}
