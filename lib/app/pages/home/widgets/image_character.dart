import 'package:flutter/material.dart';

class ImageCharacter extends StatelessWidget {
  const ImageCharacter({
    Key key,
    @required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        child: Image.network(image),
      ),
    );
  }
}
