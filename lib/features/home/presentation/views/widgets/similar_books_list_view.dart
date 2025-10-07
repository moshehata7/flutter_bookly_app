import 'package:bookly_app/features/home/data/models/book_model/book/book.model.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                final BookModel book = state.books[index];
                return BookItem(book: book);
              },
            ),
          );
        } else if (state is SimilarBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SimilarBooksFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(child: Text("Unexpected error..."));
        }
      },
    );
  }
}
