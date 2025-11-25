import 'package:flutter/material.dart';

class ThemeModeController extends StatefulWidget {
  const ThemeModeController({required this.builder, super.key});
  final WidgetBuilder builder;

  @override
  State<ThemeModeController> createState() => ThemeModeControllerState();

  /// Access the current [ThemeModeControllerState] anywhere
  static ThemeModeControllerState of(BuildContext context) {
    final inherited = context
        .dependOnInheritedWidgetOfExactType<_InheritedTheme>();
    assert(inherited != null, 'No ThemeController found in context');
    return inherited!.state;
  }
}

class ThemeModeControllerState extends State<ThemeModeController> {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  /// Toggle between light and dark
  void toggleTheme() {
    // Since we are above MaterialApp, we can't use Theme.of(context).brightness
    // We check the platform brightness directly for the 'system' case.
    final platformBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;

    setState(() {
      if (_themeMode == ThemeMode.system) {
        _themeMode = platformBrightness == Brightness.light
            ? ThemeMode.dark
            : ThemeMode.light;
      } else {
        _themeMode = _themeMode == ThemeMode.light
            ? ThemeMode.dark
            : ThemeMode.light;
      }
    });
  }

  /// Explicitly set theme
  void setTheme(ThemeMode mode) {
    setState(() => _themeMode = mode);
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedTheme(
      state: this,
      themeMode: _themeMode,
      child: Builder(builder: (context) => widget.builder(context)),
    );
  }
}

/// The inherited widget that notifies dependents of theme changes
class _InheritedTheme extends InheritedWidget {
  const _InheritedTheme({
    required this.state,
    required this.themeMode,
    required super.child,
  });

  final ThemeModeControllerState state;
  final ThemeMode themeMode;

  @override
  bool updateShouldNotify(_InheritedTheme oldWidget) =>
      oldWidget.themeMode != themeMode;
}
