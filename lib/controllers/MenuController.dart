import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    final currentState = _scaffoldKey.currentState;

    if (currentState == null) {
      return;
    }

    if (!currentState.isDrawerOpen) {
      currentState.openDrawer();
    }
  }
}
