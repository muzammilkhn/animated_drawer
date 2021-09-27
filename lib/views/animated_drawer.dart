import 'package:animated_drawer/bloc/generic_bloc.dart';
import 'package:animated_drawer/constants/runtime_variables.dart';
import 'package:animated_drawer/views/first_layer.dart';
import 'package:animated_drawer/views/shadow.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'third_layer.dart';

class AnimatedDrawer extends StatefulWidget {
  /// Gradient for First Layer background color.
  final Gradient backgroundGradient;

  /// Color for Shadow Widget
  final Color shadowColor;

  /// Widget for Menu Page
  final Widget menuPageContent;

  /// Widget for Home Page
  final Widget homePageContent;

  /// X-Axis Value of Home Page.
  ///
  /// If [homePageXValue] argument is null, widget will use predefined values.
  final double? homePageXValue;

  /// Y-Axis Value of Home Page.
  ///
  /// If [homePageYValue] argument is null, widget will use predefined values.
  final double? homePageYValue;

  /// Angle Value of Home Page.
  ///
  /// If [homePageAngle] argument is null, widget will use predefined values.
  final double? homePageAngle;

  /// X-Axis Value of Second Page.
  ///
  /// If [shadowXValue] argument is null, widget will use predefined values.
  final double? shadowXValue;

  /// Y-Axis Value of Second Page
  ///
  /// If [shadowYValue] argument is null, widget will use predefined values.
  final double? shadowYValue;

  /// Angle Value of Second Page
  ///
  /// If [shadowAngle] argument is null, widget will use predefined values.
  final double? shadowAngle;

  /// Time Duration value of Home Page Animation
  ///
  /// If [homePageSpeed] argument is null, widget will use predefined values.
  final int? homePageSpeed;

  /// Time Duration value of Second Page Animation
  ///
  /// If [shadowSpeed] argument is null, widget will use predefined values.
  final int? shadowSpeed;

  /// [openIcon] is the [Icon] or [Image] which is displayed when the Drawer is closed. If [openIcon] argument is null, Icon(Icons.menu) will be used.
  final Widget? openIcon;

  /// [closeIcon] is the [Icon] or [Image] which is displayed when the Drawer is opened. If [closeIcon] argument is null, Icon(Icons.arrow_back_ios) will be used.
  final Widget? closeIcon;

  /// A widget to make Animated Drawer with translating X-Axis, Y-Axis and Angle Coordinates.
  ///
  /// [menuPageContent] argument takes a Widget and show it when the drawer opens.
  ///
  /// [homePageContent] arugments takes a widget and show it as a top level widget.F
  ///
  /// [backgroundGradient] argument takes a [Gradient] value and set as background color of drawer.
  /// [shadowColor] argument takes a [Color] argument and set it as shadow behind the homePage widget.
  /// Optional arguments [homePageXValue],[homePageYValue], [homePageAngle], [homePageSpeed], [shadowXValue], [shadowYValue], [shadowAngle], [shadowSpeed] if not provided or provided null, default values will be used.
  AnimatedDrawer({
    required this.backgroundGradient,
    required this.menuPageContent,
    required this.homePageContent,
    required this.shadowColor,
    this.openIcon,
    this.closeIcon,
    this.homePageXValue,
    this.homePageYValue,
    this.homePageAngle,
    this.shadowXValue,
    this.shadowYValue,
    this.shadowAngle,
    this.homePageSpeed,
    this.shadowSpeed,
  });

  @override
  _AnimatedDrawerState createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawer> {
  @override
  Widget build(BuildContext context) {
    GenericBLOC().initSize(context);
    RuntimeVariables().runTimeSetValues(
        backgroundGradient: widget.backgroundGradient,
        homeX: widget.homePageXValue,
        homeY: widget.homePageYValue,
        homeAngle: widget.homePageAngle,
        homePageSpeed: widget.homePageSpeed,
        shadowX: widget.shadowXValue,
        shadowY: widget.shadowYValue,
        shadowAngle: widget.shadowAngle,
        shadowSpeed: widget.shadowSpeed,
        closeIcon: widget.closeIcon,
        openIcon: widget.openIcon);

    return Scaffold(body: _body());
  }

  Widget _body() {
    return Stack(
      children: [
        FirstLayer(
          gradient: widget.backgroundGradient,
        ),
        Shadow(
          bgColor: widget.shadowColor,
        ),
        ThirdLayer(menu: widget.menuPageContent),
        HomePage(body: widget.homePageContent),
      ],
    );
  }
}
