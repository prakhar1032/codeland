import 'dart:io';

import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  final file;
  const ImageView({super.key, this.file});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Image.file(
            widget.file,
          )),
    )));
  }
}
