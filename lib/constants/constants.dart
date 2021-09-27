import 'package:flutter/material.dart';

class Constants {
  /// Constants for device height constraint
  static double? height;

  /// Constants for device width constraint
  static double? width;

  /// Border Radius Constant for Widget which are Translating and will be Animated,
  /// this Constant is used when Widget is Translated and is in Open State.
  static const double BORDER_RADIUS_VALUE_OPEN = 10;

  /// Border Radius Constant for Widget which are Translating and will be Animated,
  /// this Constant is used when Widget is Translated and is in Close State.
  static const double BORDER_RADIUS_VALUE_CLOSE = 0;

  /// Duration value constant of animation of HomePage Widget
  static const int HOME_SCREEN_DURATION = 250;

  /// Duration value constant of animation of Shadow Widget
  static const int SHADOW_DURATION = 550;

  /// Constant of X-Axis offset value to which widget will translate to in animation for HomePage Widget.
  /// This will be used if user will not enter his/her own values.
  static const double HOME_SCREEN_X_OFFSET_END = 150;

  /// Constant of Y-Axis offset value to which widget will translate to in animation for HomePage Widget.
  /// This will be used if user will not enter his/her own values.
  static const double HOME_SCREEN_Y_OFFSET_END = 80;

  /// Constant of Angle to which widget will rotate to in animation for HomePage Widget.
  /// This will be used if user will not enter his/her own values.
  static const double HOME_SCREEN_ANGLE_END = -0.2;

  /// Constant of X-Axis offset value from which widget will translate in animation for HomePage Widget.
  /// This will be used if user will not enter his/her own values.
  static const double HOME_SCREEN_X_OFFSET_START = 0;

  /// Constant of Y-Axis offset value from which widget will translate in animation for HomePage Widget.
  /// This will be used if user will not enter his/her own values.
  static const double HOME_SCREEN_Y_OFFSET_START = 0;

  /// Constant of Angle from which widget will translate in animation for HomePage Widget.
  /// This will be used if user will not enter his/her own values.
  static const double HOME_SCREEN_ANGLE_START = 0;

  /// Constant of X-Axis offset value to which widget will translate in animation for Shadow Widget.
  /// This will be used if user will not enter his/her own values.
  static const double SHADOW_X_OFFSET_END = 122;

  /// Constant of Y-Axis offset value to which widget will translate in animation for Shadow Widget.
  /// This will be used if user will not enter his/her own values.
  static const double SHADOW_Y_OFFSET_END = 110;

  /// Constant of Angle to which widget will rotate in animation for Shadow Widget.
  /// This will be used if user will not enter his/her own values.
  static const double SHADOW_ANGLE_END = -0.275;

  /// Constant of X-Axis offset value from which widget will translate in animation for Shadow Widget.
  /// This will be used if user will not enter his/her own values.
  static const double SHADOW_X_OFFSET_START = 0;

  /// Constant of Y-Axis offset value from which widget will translate in animation for Shadow Widget.
  /// This will be used if user will not enter his/her own values.
  static const double SHADOW_Y_OFFSET_START = 0;

  /// Constant of Angle from which widget will translate in animation for Shadow Widget.
  /// This will be used if user will not enter his/her own values.
  static const double SHADOW_ANGLE_START = 0;

  /// Linear Gradient Color Constant for background of Drawer.
  /// This will be used if user will not enter his/her own values.
  static const BACKGROUND_GRADIENT = LinearGradient(
    colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
  );

  /// Color Constant for background of Drawer. This will be used if user will not enter his/her own values.
  static const Color SHADOW_COLOR = Color(0xFF4c41a3);

  static const Icon DRAWER_OPEN_ICON = Icon(
    Icons.menu,
    color: Color(0xFF1f186f),
  );

  static const Icon DRAWER_CLOSE_ICON =
      Icon(Icons.arrow_back_ios, color: Color(0xFF1f186f));
}
