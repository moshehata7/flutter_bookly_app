import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String img;

  const CustomImage({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: img.isNotEmpty
            ? Image.network(
                img,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 40,
                ),
              )
            : const Icon(
                Icons.broken_image,
                color: Colors.grey,
                size: 40,
              ),
      ),
    );
  }
}
