import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/widgets/app_drawer/app_drawer.dart';

class AppDrawerTabletPortrait extends StatelessWidget {
  const AppDrawerTabletPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(blurRadius: 16,color: Colors.black12)
      ]),
   child: Row(children: AppDrawer.getDrawerOptions(),),
    );
  }
}

class AppDrawerTabletLandscape extends StatelessWidget {
  const AppDrawerTabletLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250 ,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(blurRadius: 16,color: Colors.black12)]),
   child: Column(children: AppDrawer.getDrawerOptions(),),
   
    );
  }
}
