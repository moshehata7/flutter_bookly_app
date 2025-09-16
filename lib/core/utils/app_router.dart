import 'package:bookly_app/features/home/presentation/views/book_detail_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) {
          return const BookDetailsView();
        },
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
