import 'package:bookly_app/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: 300,
            width: 150,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BookItem(
                  image: state.books[index].volumeInfo.imageLinks.thumbnail,
                );
              },
            ),
          );
        } else if (state is FeaturedBooksLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is FeaturedBooksFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Text("error...");
        }
      },
    );
  }
}
