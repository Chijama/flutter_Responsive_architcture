import 'package:flutter/material.dart';
import 'package:responsive_architecture/datamodels/drawer_item_data.dart';
import 'package:responsive_architecture/ui/widgets/base_model_widget.dart';

class DrawerOptionMobilePortrait extends BaseModelWidget<DrawerItemData> {
  const DrawerOptionMobilePortrait({super.key});

 

  
  @override
  Widget build(BuildContext context, DrawerItemData model) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      height: 80,
      child: Row(
        children: [
          Icon(
           model.iconData,
            size: 25,
          ),
          const SizedBox(
            width: 25,
          ),
          Text(
           model.title!,
            style: const TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}

class DrawerOptionMobileLandscape extends BaseModelWidget<DrawerItemData> {
  const DrawerOptionMobileLandscape({super.key});

  
  @override
  Widget build(BuildContext context,DrawerItemData model) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child:  Icon(
            model.iconData,
            size: 25,
          ),
    );
  }
}
