import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageFullScreen extends StatelessWidget {
  const ImageFullScreen({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Container(
          width: screenWidth,
          height: screenHeight,
          color: Colors.black,
          child: Hero(
            tag: "msg-image",
            child: Image.network(imageUrl),
            // child: CachedNetworkImage(
            //   imageUrl: imageUrl,
            //   // placeholder: (context, url) =>
            //   // const SizedBox(
            //   //   width: 50,
            //   //   height: 50,
            //   //   child: CircularProgressIndicator(),
            //   // ),
            //   errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
          child: CloseButton(
            onPressed: () {
              Get.back();
            },
            color: Colors.white,
          ),
          left: 20,
          top: 50,
        )
      ]),
    );
  }
}
