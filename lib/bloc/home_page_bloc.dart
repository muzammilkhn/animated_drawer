import 'package:animated_drawer/constants/constants.dart';
import 'package:animated_drawer/constants/runtime_variables.dart';

class HomePageBloc {
  //This condition is to check wether the drawer is open state or closed state
  static bool isOpen = false;

  //These arguments hold values to which widget will translate in animation.

  static double xoffSet = Constants.HOME_SCREEN_X_OFFSET_START;
  static double yoffSet = Constants.HOME_SCREEN_Y_OFFSET_START;
  static double angle = Constants.HOME_SCREEN_ANGLE_START;

// This function will start animation of open drawer of HomePage Widget
  void openDrawer() {
    isOpen = true;

    xoffSet = RuntimeVariables.homePageXUserInput == null
        ? Constants.HOME_SCREEN_X_OFFSET_END
        : RuntimeVariables.homePageXUserInput;
    yoffSet = RuntimeVariables.homePageXUserInput == null
        ? Constants.HOME_SCREEN_Y_OFFSET_END
        : RuntimeVariables.homePageXUserInput;
    angle = RuntimeVariables.homePageAngleUserInput == null
        ? Constants.HOME_SCREEN_ANGLE_END
        : RuntimeVariables.homePageAngleUserInput;
  }

// This function will start animation of close drawer of HomePage Widget

  void closeDrawer() {
    isOpen = false;

    xoffSet = Constants.HOME_SCREEN_X_OFFSET_START;
    yoffSet = Constants.HOME_SCREEN_Y_OFFSET_START;
    angle = Constants.HOME_SCREEN_ANGLE_START;
  }
}
