import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: 
            DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("images/book.jpg"))
            )
            ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
              Text("The Jungle Book",style: Styles.textStyle18,),
              Text("Rudyard Kipling",style: Styles.textStyle14,),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(r"19.99 €",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                  SizedBox(width: 50,),
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.solidStar,size: 10,color: Colors.yellowAccent,),
                      Text(" 4.8",),
                      Text("(2365)",style: Styles.textStyle14,)
                    ],
                  )
                ],
              )
              
            ],),
          )
        ],
      ),
    );
  }
}