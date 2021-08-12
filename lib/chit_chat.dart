import 'dart:async';

import 'package:chat_module_flutter/constants/constants.dart';
import 'package:chat_module_flutter/models/message_model.dart';
import 'package:chat_module_flutter/widgets/chat.dart';
import 'package:chat_module_flutter/widgets/input_tool.dart';
import 'package:flutter/material.dart';

class ChitChat extends StatefulWidget {
  const ChitChat({
    Key? key,
    required this.userId,
    leftBubbleColor = const Color(0xFF006064),
    rightBubbleColor = const Color(0xFF616161),
  }) : super(key: key);
  final dynamic userId;

  @override
  State<ChitChat> createState() => _ChitChatState();
}

class _ChitChatState extends State<ChitChat> {
  final _scrollController = ScrollController();

  /// Will used to access the Animated list
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    // var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    // After 1 second, it takes you to the bottom of the ListView
    Timer(
      const Duration(seconds: 1),
      () =>
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent),
    );
    // _controller.animateTo(
    //     _controller.position.maxScrollExtent,
    //     duration: const Duration(milliseconds: 200),
    //     curve: Curves.easeInOut
    // );
    return Stack(children: [
      Container(
        margin: const EdgeInsets.only(bottom: 55.0),
        child: AnimatedList(
          controller: _scrollController,
          key: listKey,
          initialItemCount: list.length,
          itemBuilder: (context, index, animation) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0),
                end: const Offset(0, 0),
              ).animate(animation),
              child: Chat(
                userId: widget.userId,
                data: list[index],

              ),
            );
          },
        ),

        // ListView.builder(
        //   controller: _scrollController,
        //   itemCount: list.length,
        //   itemBuilder: (context, index) {
        //     return Chat(
        //       userId: widget.userId,
        //       data: list[index],
        //     );
        //   },
        // ),
      ),
      Positioned(
        child: InputTool(
          onTextSend: (dynamic msg) {
            var message = MessageItem(
                user: User(id: '11', name: "Muhammad Jawad", avatar: image),
                id: '${list.length}',
                text: msg,
                createdAt: DateTime.now(),
                imagUrl: null,
                videoUrl: null,
                receive: true,
                send: true);
            // list.add(message);
            setState(() {
              insertItem(list.length, message);
              _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastOutSlowIn);
            });
          },
        ),
        bottom: 0,
        left: 0,
      )
    ]);
  }

  void insertItem(int index, MessageItem item) {
    list.insert(index, item);
    listKey.currentState!.insertItem(index);
  }
}
