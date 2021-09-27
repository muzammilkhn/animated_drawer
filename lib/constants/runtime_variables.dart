import 'package:flutter/material.dart';

class RuntimeVariables {
  /// X-Axis offset value of HomePage defined at runtime by user. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static double? homePageXUserInput;

  /// Y-Axis offset value of HomePage defined at runtime by user. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static double? homePageYUserInput;

  /// Angle value of HomePage defined at runtime by user. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static double? homePageAngleUserInput;

  /// X-Axis offset value of Shadow defined at runtime by user. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static double? shadowXUserInput;

  /// Y-Axis offset value of Shadow defined at runtime by user. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static double? shadowYUserInput;

  /// Angle value of Shadow defined at runtime by user. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static double? shadowAngleUserInput;

  /// Time Duration value of HomeScreen Animation defined at runtime by user. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static int? homePageSpeedUserInput;

  /// Time Duration value of Shadow Animation defined at runtime by user. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static int? shadowSpeedUserInput;

  static Gradient? backgroundGradientUserInput;

  /// Icon Displayed when the drawer is in close state. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static Widget? openIconUserInput;

  /// Icon Displayed when the drawer is in open state. This will be used if the user has passed it in the constructor.
  /// If user has not passed it in the constructor, than value from the constants is used.
  static Widget? closeIconUserInput;

  /// This function will assign values for all the arguments which are passed by user at runtime.F
  void runTimeSetValues({
    required Gradient backgroundGradient,
    double? homeX,
    double? homeY,
    double? homeAngle,
    double? shadowX,
    double? shadowY,
    double? shadowAngle,
    int? homePageSpeed,
    int? shadowSpeed,
    Widget? openIcon,
    Widget? closeIcon,
  }) {
    homePageXUserInput = homeX;
    homePageYUserInput = homeY;
    homePageAngleUserInput = homeAngle;

    shadowXUserInput = shadowX;
    shadowYUserInput = shadowY;
    shadowAngleUserInput = shadowAngle;

    homePageSpeedUserInput = homePageSpeed;
    shadowSpeedUserInput = shadowSpeed;

    backgroundGradientUserInput = backgroundGradient;

    openIconUserInput = openIcon;
    closeIconUserInput = closeIcon;
  }
}
