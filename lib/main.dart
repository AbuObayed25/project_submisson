import 'package:flutter/material.dart';
import 'package:project_submisson/config/colors.dart';
import 'DesktopLayout.dart';
import 'TabletLayout.dart';
import 'MobileLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveHomePage(),
      theme: ThemeData(
          brightness: Brightness.light,
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
            foregroundColor: Colors.black,
          )),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: buttonColor,
          ))),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, BoxConstraints constraints) {
          if (constraints.maxWidth < 640) {
            return MobileLayout();
          } else if (constraints.maxWidth > 640 &&
              constraints.maxWidth < 1008) {
            return TabletLayout();
          } else {
            return DesktopLayout();
          }
        },
      ),
    );
  }
}
