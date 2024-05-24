import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/widgets/app_drawer/app_drawer.dart';

/* Contains the widgets that will be used for Mobile layout of home,
portrait and landscape */
class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeMobilePortrait({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu)),
          )
        ],
      ),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          AppDrawer()
        ],
      ),
    );
  }
}
