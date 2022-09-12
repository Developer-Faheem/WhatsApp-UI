import 'package:flutter/material.dart';
import 'package:whatsapp/responsive/mobile_layout.dart';
import 'web_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //this will look up the the width of its parent and call the layout
      builder: (context, constraints) {
        if (constraints.maxWidth < 900) {
          return MobileLayout();
        } else {
          return WebLayout();
        }
      },
    );
  }
}
