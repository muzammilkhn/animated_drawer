import 'package:animated_drawer/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

import 'home_page_bloc.dart';

class GenericBLOC {
  //generic decoration for both HomePage and Shadow widget

  static getDecoraton(Color bgColor) {
    return BoxDecoration(
        color: bgColor,
        borderRadius: HomePageBloc.isOpen
            ? BorderRadius.circular(10)
            : BorderRadius.circular(0));
  }

  static getBorderRadius() {
    return HomePageBloc.isOpen
        ? BorderRadius.circular(10)
        : BorderRadius.circular(0);
  }

  //generic function for to translate values of animated container in HomePage and Shadow widget
  //Use of third party package MATRIX4TRANSFORM to transform the angle of widget at given angle

  static changeValues(double xoffSet, double yoffSet, double angle) {
    return Matrix4Transform()
        .translate(x: xoffSet, y: yoffSet)
        .rotate(angle)
        .matrix4;
  }

  //generic funciton to pass duration for animation in HomePage and Shadow widget

  static setDuration(int duration) {
    return Duration(milliseconds: duration);
  }

  //This function will get and set height and width constraints of a device

  void initSize(BuildContext context) {
    Constants.height = MediaQuery.of(context).size.height;
    Constants.width = MediaQuery.of(context).size.width;
  }
}
