import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeManagerCubit extends HydratedCubit<ThemeMode> {
  ThemeManagerCubit() : super(ThemeMode.system);

  /// Toggle between light and dark
  void toggleTheme() {
    if (state == ThemeMode.system) {
      /// Check if the system is dark
      final isSystemDark =
          WidgetsBinding.instance.platformDispatcher.platformBrightness ==
          Brightness.dark;
      emit(isSystemDark ? ThemeMode.light : ThemeMode.dark);
    } else {
      emit(state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
    }
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    return ThemeMode.values[json['theme_mode'] as int];
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'theme_mode': state.index};
  }
}
