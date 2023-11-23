import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_architecture/datamodels/drawer_item_data.dart';
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
    return Provider.value(
      value: DrawerItemData(iconData: iconData, title: title),
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          landscape: (context) => DrawerOptionMobileLandscape(),
          portrait: (context) => DrawerOptionMobilePortrait(
           
          ),
        ),
        tablet: OrientationLayout(
          landscape: (context) =>
              DrawerOptionTabletPortrait(),
          portrait:(context) =>
              DrawerOptionTabletPortrait(),
        ),
      ),
    );
  }
}
