import 'package:go_router/go_router.dart';

import 'home.dart';

class AppRouter {
  static final config = GoRouter(
    // Initial route
    initialLocation: '/',

    // Define your routes
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],

    // Error handling
    // errorBuilder: (context, state) => ,
  );
}
