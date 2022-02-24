import 'package:flutter/material.dart';

class ContactImage extends StatelessWidget {
  final String urlImg;
  const ContactImage({Key? key, required this.urlImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(urlImg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
