import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/responsive/orientation_layout.dart';
import 'package:responsive_architecture/ui/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/ui/widgets/drawer_option/drawer_option_mobile.dart';
import 'package:responsive_architecture/ui/widgets/drawer_option/drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;

  const DrawerOption({super.key, required this.title, required this.iconData});
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        landscape: DrawerOptionMobileLandscape(iconData: iconData),
        portrait: DrawerOptionMobilePortrait(iconData: iconData,title: title,),
      ),
      tablet: OrientationLayout(
        landscape: DrawerOptionTabletPortrait(iconData: iconData,title: title),
        portrait: DrawerOptionTabletPortrait(iconData: iconData,title: title),
      ),
    );
  }

}
