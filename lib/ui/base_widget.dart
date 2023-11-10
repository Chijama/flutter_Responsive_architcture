import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/sizing_information.dart';
import 'package:responsive_architecture/ui/utils/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const BaseWidget({super.key, required this.builder});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxConstraints) {
      var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxConstraints.maxWidth,boxConstraints.maxHeight));
      return builder(context, sizingInformation);
    });
  }
}
