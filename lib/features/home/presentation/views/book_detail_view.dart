import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model/book/book.model.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});
  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    final category = widget.book.volumeInfo?.categories?.isNotEmpty == true
        ? widget.book.volumeInfo?.categories!.first
        : "general";
    BlocProvider.of<SimilarBooksCubit>(
      context,
    ).fetchSimilarBooks(category: category??"");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
      ),
      body: BookDetailsViewBody(book: widget.book),
    );
  }
}
