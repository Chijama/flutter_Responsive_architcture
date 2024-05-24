import 'package:flutter/material.dart';
import 'package:responsive_architecture/datamodels/drawer_item_data.dart';
import 'package:responsive_architecture/ui/widgets/base_model_widget.dart';

class DrawerOptionTabletPortrait extends BaseModelWidget<DrawerItemData> {
  const DrawerOptionTabletPortrait({super.key});

  @override
  Widget build(BuildContext context, DrawerItemData model) {
    return Container(
      width: 152,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            model.iconData,
            size: 45,
          ),
          const SizedBox(
            width: 25,
          ),
          Text(
            model.title!,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class DrawerOptionTabletLandscape extends StatelessWidget {
  const DrawerOptionTabletLandscape({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
