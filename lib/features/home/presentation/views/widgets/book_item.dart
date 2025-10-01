import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(fit: BoxFit.fill, imageUrl: image,errorWidget: (context, url, error) => Icon(Icons.alarm),))
    );
  }
}
