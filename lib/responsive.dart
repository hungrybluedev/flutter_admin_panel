import 'package:flutter/material.dart';

const _desktopCutoff = 1260;
const _aspectCutoff = 1050;
const _mobileCutoff = 900;
const _gridCutoff = 670;
const _extraSmallCutoff = 400;

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < _mobileCutoff;

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= _mobileCutoff && width < _desktopCutoff;
  }

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= _desktopCutoff;

  static double cardAspectRatio(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < _extraSmallCutoff) {
      return 1.1;
    }
    if (width < _gridCutoff) {
      return 1.3;
    }
    if (width < _aspectCutoff) {
      return 1.1;
    }
    return 1.2;
  }

  static int cardGridCount(BuildContext context) =>
      MediaQuery.of(context).size.width < _gridCutoff ? 2 : 4;
  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return mobile;
    }
    if (isTablet(context) && tablet != null) {
      return tablet!;
    }
    return desktop;
  }
}
