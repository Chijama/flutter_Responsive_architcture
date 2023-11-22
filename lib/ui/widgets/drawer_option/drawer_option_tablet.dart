import 'package:flutter/material.dart';
 

class DrawerOptionTabletPortrait extends StatelessWidget {
  final String? title;
  final IconData? iconData;

  const DrawerOptionTabletPortrait(
      {super.key,  this.title,  this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      
alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: 45,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            title!,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class DrawerOptionTabletLandscape extends StatelessWidget {
  final String? title;
  final IconData? iconData;

  const DrawerOptionTabletLandscape(
      {super.key,  this.title,  this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.blue,

    );
  }
}