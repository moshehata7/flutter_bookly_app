import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ListView(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                GoRouter.of(context).pop();
              }, icon: Icon(Icons.arrow_back)),
              SizedBox(width: 10,),
              Expanded(child: CustomTextField()),
            ],
          ),
          SizedBox(height: 15),
          Text("search result", style: Styles.textStyle16),
          SizedBox(height: 15),
          BestSellerListView(),
        ],
      ),
    );
  }
}
