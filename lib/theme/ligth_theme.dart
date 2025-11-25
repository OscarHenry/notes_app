part of 'app_theme.dart';

final themeDataLight = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryLight),
  scaffoldBackgroundColor: AppColors.backgroundLight,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.transparent,
    foregroundColor: AppColors.black,
    elevation: 0,
    centerTitle: false,
    titleTextStyle: AppTextStyles.headlineMediumLight,
  ),
);
