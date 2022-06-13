import 'package:flutter/material.dart';

class ImageCircle extends StatelessWidget {
  final double imageRadius;
  final ImageProvider? imageProvider;

  const ImageCircle({Key? key, this.imageRadius = 20, this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
