import 'package:flutter/material.dart';

import 'app_router.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.config,
      builder: (context, child) {
        return child ?? const SizedBox.shrink();
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
