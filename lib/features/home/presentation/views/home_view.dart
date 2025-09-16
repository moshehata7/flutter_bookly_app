import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Image.asset("images/shelfylogo.png", height: 120),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                GoRouter.of(context).push('/searchView');
              },
              icon: FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
