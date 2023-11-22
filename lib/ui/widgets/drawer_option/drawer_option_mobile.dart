import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/responsive/orientation_layout.dart';
import 'package:responsive_architecture/ui/responsive/screen_type_layout.dart';

class DrawerOptionMobilePortrait extends StatelessWidget {
  final String? title;
  final IconData? iconData;

  const DrawerOptionMobilePortrait(
      {super.key, this.title, this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      height: 80,
      child: Row(
        children: [
          Icon(
            iconData,
            size: 25,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            title!,
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}

class DrawerOptionMobileLandscape extends StatelessWidget {
  
  final IconData? iconData;

  const DrawerOptionMobileLandscape(
      {super.key,    this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child:  Icon(
            iconData,
            size: 25,
          ),
    );
  }
}
