part of 'app_theme.dart';

final themeDataDark = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryDark),
  scaffoldBackgroundColor: AppColors.backgroundDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.transparent,
    foregroundColor: AppColors.white,
    elevation: 0,
    centerTitle: false,
    titleTextStyle: AppTextStyles.headlineMediumDark,
  ),
);
