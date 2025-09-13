import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children:[ 
          FeaturedListView(),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Best Seller",style: Styles.titleMedium,),
          )
        ]
      ),
    );
  }
}
