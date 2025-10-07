import 'package:bookly_app/core/utils/functions/launch.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book/book.model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    final volumeInfo = book.volumeInfo;

    return Column(
      children: [
        CustomImage(img: volumeInfo?.imageLinks?.thumbnail ?? ""),
        const SizedBox(height: 25),

        Text(
          volumeInfo?.title ?? "No Title",
          style: Styles.textStyle18,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),

        Text(
          (volumeInfo?.authors?.isNotEmpty ?? false)
              ? volumeInfo!.authors!.join(", ")
              : "Unknown Author",
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.solidStar,
              size: 10,
              color: Colors.yellowAccent,
            ),
            const SizedBox(width: 5),
            Text(
              (volumeInfo?.averageRating?.toString() ?? "N/A"),
              style: Styles.textStyle14,
            ),
            const SizedBox(width: 5),
            Text(
              "(${volumeInfo?.ratingsCount ?? 0})",
              style: Styles.textStyle14,
            ),
          ],
        ),
        const SizedBox(height: 30),

        BookButton(
          onPressed: () {
            launchCustomUrl(context, volumeInfo?.previewLink ?? "");
          },
        ),
      ],
    );
  }
}
