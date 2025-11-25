import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_router.dart';
import 'managers/managers.dart';
import 'theme/app_theme.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeManagerCubit(), lazy: false),
      ],
      child: BlocBuilder<ThemeManagerCubit, ThemeMode>(
        builder: (context, theme) => MaterialApp.router(
          routerConfig: AppRouter.config,
          theme: themeDataLight,
          darkTheme: themeDataDark,
          themeMode: theme,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
