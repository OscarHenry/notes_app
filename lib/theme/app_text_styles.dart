part of 'app_theme.dart';

// override the text styles for the app
// some text for ligth theme and some for dark theme
class AppTextStyles {
  static const TextStyle headlineMediumLight = TextStyle(
    color: AppColors.black,
    fontSize: 43,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle headlineMediumDark = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 43,
    fontWeight: FontWeight.w600,
  );
}
