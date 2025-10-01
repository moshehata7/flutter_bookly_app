import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookItem(image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.simonandschuster.com%2Fbooks%2FThe-Library-Book%2FSusan-Orlean%2F9781476740195&psig=AOvVaw1b9kSj__hadW-ZPZh-E9aL&ust=1759192953288000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCPjsrsve_I8DFQAAAAAdAAAAABAE",),
        SizedBox(height: 25),
        Text("The Jungle Book", style: Styles.textStyle18),
        SizedBox(height: 4),

        Text("Rudyard Kipling", style: Styles.textStyle14),
        SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.solidStar,
              size: 10,
              color: Colors.yellowAccent,
            ),
            SizedBox(width: 5),
            Text("4.8"),
            SizedBox(width: 5),

            Text("(2365)", style: Styles.textStyle14),
          ],
        ),
        SizedBox(height: 30),
        BookButton(),
      ],
    );
  }
}
