import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/responsive/orientation_layout.dart';
import 'package:responsive_architecture/ui/responsive/responsive_builder.dart';
import 'package:responsive_architecture/ui/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/ui/views/home_view_mobile.dart';
import 'package:responsive_architecture/ui/views/home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayout(
            portrait: (context) => HomeMobilePortrait(),
            landscape: (context) => const HomeMobileLandscape(),
          ),
          tablet: const HomeViewTablet(),
          
        );
      },
    );
  }
}
