import 'package:animated_drawer/bloc/generic_bloc.dart';
import 'package:animated_drawer/bloc/home_page_bloc.dart';
import 'package:animated_drawer/bloc/shadow_bloc.dart';
import 'package:animated_drawer/constants/constants.dart';
import 'package:animated_drawer/constants/runtime_variables.dart';
import 'package:animated_drawer/views/shadow.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final Widget body;

  HomePage({@required this.body});

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: GenericBLOC.changeValues(
            HomePageBloc.xoffSet, HomePageBloc.yoffSet, HomePageBloc.angle),
        duration: GenericBLOC.setDuration(
            RuntimeVariables.homePageSpeedUserInput == null
                ? Constants.HOME_SCREEN_DURATION
                : RuntimeVariables.homePageSpeedUserInput),
        child: ClipRRect(
          borderRadius: GenericBLOC.getBorderRadius(),
          child: Stack(
            children: [
              widget.body ?? Container(),
              SafeArea(
                child: HomePageBloc.isOpen ? _closeButton() : _openButton(),
              )
            ],
          ),
        ));
  }

  _openButton() {
    return IconButton(
        icon: Icon(
          Icons.menu,
          color: Color(0xFF1f186f),
        ),
        onPressed: () {
          HomePageBloc().openDrawer();
          ShadowBLOC().openDrawer();

          setState(() {});
          shadowState.setState(() {});
        });
  }

  _closeButton() {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Color(0xFF1f186f)),
        onPressed: () {
          HomePageBloc().closeDrawer();
          ShadowBLOC().closeDrawer();

          setState(() {});
          shadowState.setState(() {});
        });
  }
}
