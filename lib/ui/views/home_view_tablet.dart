import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/responsive/sizing_information.dart';
import 'package:responsive_architecture/ui/widgets/app_drawer/app_drawer.dart';

class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({super.key});
  @override

  Widget build(BuildContext context) {
  SizingInformation izing= SizingInformation();

    var children = [
      Expanded(
        child: Text(izing.deviceScreenType.toString(), style: TextStyle(color: Colors.purple, fontSize: 25),),
      ),
      const AppDrawer()
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait
          ? Column(
              children: children,
            )
          : Row(
              children: children.reversed.toList(),
            ),
    );
  }
}
