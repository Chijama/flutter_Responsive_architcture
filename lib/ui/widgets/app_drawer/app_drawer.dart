import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/responsive/orientation_layout.dart';
import 'package:responsive_architecture/ui/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/ui/widgets/app_drawer/app_drawer_mobile.dart';

import 'package:responsive_architecture/ui/widgets/app_drawer/app_drawer_tablet.dart';
import 'package:responsive_architecture/ui/widgets/drawer_option/drawer_option.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait:(context) => AppDrawerTabletPortrait(),
        landscape: (context) => AppDrawerTabletLandscape(),
      ),
    );
  }
  
  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        title: 'Images',
        iconData: Icons.image,
      ),
      DrawerOption(title: 'Reports', iconData: Icons.photo_filter),
      DrawerOption(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      DrawerOption(title: 'Settings', iconData: Icons.settings)
    ];
  }
}
