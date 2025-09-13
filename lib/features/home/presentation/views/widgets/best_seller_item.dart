import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("images/book.jpg"),
        Column(children: [
          Text("data"),
          Text("data"),
          
        ],)
      ],
    );
  }
}