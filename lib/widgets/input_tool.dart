import 'package:chat_module_flutter/controller/text_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class InputTool extends StatefulWidget {
  const InputTool({Key? key, required this.onTextSend}) : super(key: key);
  final Function(dynamic) onTextSend;

  @override
  State<InputTool> createState() => _InputToolState();
}

class _InputToolState extends State<InputTool> {
  final textController = TextEditingController();
  // var controller = ChitChatController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 1.0),
      height: 55,
      width: MediaQuery.of(context).size.width - 5,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.cyan[900],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Icon(
                      MaterialIcons.emoji_emotions,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: textController.text.trim().isNotEmpty ? 6 : 4,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      reverse: true,
                      child: TextField(
                        controller: textController,
                        onChanged: (val) {
                          setState(() {
                            // controller.setText(RxString(val));
                          });
                        },
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type a message',
                          hintStyle:
                              TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  textController.text.trim().isNotEmpty
                      ? const SizedBox.shrink()
                      : const Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.attach_file,
                            color: Colors.white,
                          ),
                        ),
                  textController.text.trim().isNotEmpty
                      ? const SizedBox.shrink()
                      : const Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          ClipOval(
            child: Material(
                color: Colors.cyan[900], // Button color
                child: getWidget(textController.text.toString())),
          )
        ],
      ),
    );
  }

  Widget getWidget(String text) {
    return text.trim().isNotEmpty
        ? InkWell(
            splashColor: Colors.green[200], // Splash color
            onTap: () {
              if (textController.text.isNotEmpty) {
                widget.onTextSend(textController.text.trim());
                textController.clear();
                // controller.clearText();
              }
              // else {}
            },
            child: const SizedBox(
                width: 50,
                height: 50,
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                )),
          )
        : InkWell(
            splashColor: Colors.green[200], // Splash color
            onTap: () {},
            child: const SizedBox(
                width: 50,
                height: 50,
                child: Icon(
                  Icons.mic,
                  color: Colors.white,
                )),
          );
  }
}
