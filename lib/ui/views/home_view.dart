import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.all(56),
                  height: 150,
                  color: Colors.blue,
                  child: BaseWidget(
                    builder: (context, sizingInformation) =>
                        Text(sizingInformation.toString()),
                  ),
                ),
                Text(sizingInformation.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
