import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BookItem(),
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
              Expanded(child: SizedBox(height: 20)),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("you can also like ", style: Styles.textStyle14),
                ),
              ),
              SimilarBooksListView(),
            ],
          ),
        ),
      ],
    );
  }
}
