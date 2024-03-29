import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double top;
  final double left;
  final double diameter;
  final String image;

  const ProfileImage({
     Key ?key,
    required this.top,
    required this.left,
    required this.diameter,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: diameter,
        width: diameter,
        child: ClipRRect(
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(300.0),
        ),
      ),
    );
  }
}
