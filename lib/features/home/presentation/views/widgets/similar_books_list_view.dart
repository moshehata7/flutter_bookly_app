import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BookItem(image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.simonandschuster.com%2Fbooks%2FThe-Library-Book%2FSusan-Orlean%2F9781476740195&psig=AOvVaw1b9kSj__hadW-ZPZh-E9aL&ust=1759192953288000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCPjsrsve_I8DFQAAAAAdAAAAABAE",);
        },
      ),
    );
  }
}
