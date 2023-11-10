import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

class SizingInformation {
  final Orientation? orientation;
  final DeviceScreenType? deviceScreenType;
  final Size? screenSize;
  final Size? localWidgetSize;

  SizingInformation({
  this.deviceScreenType,
   this.localWidgetSize,
   this.orientation,
   this.screenSize,
  });

  @override
  String toString() {
    
    return 'Orientation: $orientation DeviceScreenType: $deviceScreenType ScreenSize: $screenSize, LocalWidgetSize: $localWidgetSize';
  }
}
