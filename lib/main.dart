import 'package:flutter/material.dart';
import 'package:proyecto_responsive/responsive/cuatrok_scaffols.dart';
import 'package:proyecto_responsive/responsive/desktop_scaffold.dart';
import 'package:proyecto_responsive/responsive/mobile_scaffold.dart';
import 'package:proyecto_responsive/responsive/responsive_layout.dart';
import 'package:proyecto_responsive/responsive/table_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tableScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold(),
          cuatrokScaffold: CuatrokScaffold(),
      )
    );
  }
}
