import 'package:flutter/material.dart';

//hacemos configaracion para el tamaño de pantallas
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, required this.mobileScaffold, required this.tableScaffold, required this.desktopScaffold, required this.cuatrokScaffold}) : super(key: key);
  final Widget mobileScaffold;
  final Widget tableScaffold;
  final Widget desktopScaffold;
  final Widget cuatrokScaffold;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //creamos los if para el diseño de la pantalla segun el tamaño del dispositivo
      if (constraints.maxWidth < 500){
        return mobileScaffold;
      } else if(constraints.maxWidth < 1100){
        return tableScaffold;
      } else if (constraints.maxWidth < 1900){
        return desktopScaffold;
      } else{
        return cuatrokScaffold;
      }
    },
    );
  }
}
