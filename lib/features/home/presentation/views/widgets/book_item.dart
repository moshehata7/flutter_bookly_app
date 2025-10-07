import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/data/models/book_model/book/book.model.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  final BookModel book;

  const BookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    String? imageUrl =
        book.volumeInfo?.imageLinks?.thumbnail ??
        book.volumeInfo?.imageLinks?.smallThumbnail ??
        '';

    // نحول الرابط من books.google.com إلى googleusercontent
    if (imageUrl.startsWith('http://books.google.com/books/content')) {
      imageUrl = imageUrl
          .replaceFirst(
            'http://books.google.com/books/content',
            'https://books.googleusercontent.com/books/content',
          )
          .replaceFirst('http://', 'https://');
    } else if (imageUrl.startsWith('http://')) {
      imageUrl = imageUrl.replaceFirst('http://', 'https://');
    }

    // نضمن إنه مش فاضي
    final secureImageUrl = imageUrl;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push('/bookDetailsView', extra: book);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: secureImageUrl.isNotEmpty
                ? Image.network(
                    Uri.encodeFull(secureImageUrl),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error, color: Colors.red, size: 50),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    },
                  )
                : const Icon(Icons.broken_image, color: Colors.grey, size: 50),
          ),
        ),
      ),
    );
  }
}
