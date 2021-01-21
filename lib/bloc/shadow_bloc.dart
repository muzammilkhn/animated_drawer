import 'package:animated_drawer/constants/constants.dart';
import 'package:animated_drawer/constants/runtime_variables.dart';

class ShadowBLOC {
  //These arguments hold values to which widget will translate in animation.

  static double xoffSet = Constants.SHADOW_X_OFFSET_START;
  static double yoffSet = Constants.SHADOW_Y_OFFSET_START;
  static double angle = Constants.SHADOW_ANGLE_START;

// This function will be called when ever the button is pressed to open drawer and assign values to Shadow animatedContainer.

  void openDrawer() {
    xoffSet =
        RuntimeVariables.shadowXUserInput ?? Constants.SHADOW_X_OFFSET_END;
    yoffSet =
        RuntimeVariables.shadowYUserInput ?? Constants.SHADOW_Y_OFFSET_END;
    angle = RuntimeVariables.shadowAngleUserInput ?? Constants.SHADOW_ANGLE_END;
  }

// This function will be called when ever the button is pressed to close drawer and assign values to Shadow animatedContainer.

  void closeDrawer() {
    xoffSet = Constants.SHADOW_X_OFFSET_START;
    yoffSet = Constants.SHADOW_Y_OFFSET_START;
    angle = Constants.SHADOW_ANGLE_START;
  }
}
