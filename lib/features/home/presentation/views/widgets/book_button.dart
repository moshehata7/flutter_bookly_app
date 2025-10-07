import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            stops: [0.5, 0.5],
            colors: [Colors.white, Color(0xffe87763)],
          ),
        ),
        height: 50,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                r"19.99 €",
                style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextButton(
                onPressed: onPressed,

                child: Text("Free Preview", style: Styles.textStyle18.copyWith(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
