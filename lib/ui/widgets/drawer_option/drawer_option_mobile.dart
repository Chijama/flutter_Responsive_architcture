import 'package:flutter/material.dart';
import 'package:responsive_architecture/datamodels/drawer_item_data.dart';
import 'package:responsive_architecture/ui/responsive/orientation_layout.dart';
import 'package:responsive_architecture/ui/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/ui/widgets/base_model_widget.dart';

class DrawerOptionMobilePortrait extends BaseModelWidget<DrawerItemData> {
 

  
  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      height: 80,
      child: Row(
        children: [
          Icon(
           data.iconData,
            size: 25,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
           data.title!,
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}

class DrawerOptionMobileLandscape extends BaseModelWidget<DrawerItemData> {
  
  @override
  Widget build(BuildContext context,DrawerItemData data) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child:  Icon(
            data.iconData,
            size: 25,
          ),
    );
  }
}
