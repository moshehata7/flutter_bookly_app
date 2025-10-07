import 'package:bookly_app/features/home/data/models/book_model/book/book.model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    final volumeInfo = bookModel.volumeInfo;

    String? imageUrl = volumeInfo?.imageLinks?.thumbnail;
    if (imageUrl != null && imageUrl.startsWith('http:')) {
      imageUrl = imageUrl.replaceFirst('http:', 'https:');
    }

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView', extra: bookModel);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(
              img: (imageUrl != null)
                  ? imageUrl.replaceFirst('http://', 'https://')
                  : '',
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // العنوان
                  Text(
                    volumeInfo?.title ?? "No Title",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),

                  // المؤلف
                  Text(
                    (volumeInfo?.authors != null &&
                            volumeInfo!.authors!.isNotEmpty)
                        ? volumeInfo.authors![0]
                        : "Unknown Author",
                    style: Styles.textStyle14,
                  ),

                  // السعر والتقييم
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle14.copyWith(color: Colors.grey[700])
                      ),
                      const Spacer(),
                      BookRating(
                        rating: (volumeInfo?.averageRating ?? 0).round(),
                        count: volumeInfo?.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
