import 'package:flutter/material.dart';
import 'package:proyecto_responsive/constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //llamamos el appBar anteriormente definido
      appBar: myAppbar,
      backgroundColor: myDefaultBackground,
      //en el body encontraremos espacios para imagenes princpale, Texto de la pagina principal y una publicidad
      body: Row(
        children: [
          myDrawer,

          Expanded(
            flex: 3,
            child: Column(
            children: [
              //configuracion para magines principales
              AspectRatio(aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 1,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1),
                    itemBuilder: (context, index){
                      //invocamos las imagenes que han sido modificadas la clase MyBox dentro del archivo my_box
                      return const MyBox();
                    },
                  ),
                ),
              ),
              Expanded(child: ListView.builder(
                //Configuracion para el texto
                itemCount: 1,
                itemBuilder: (context, index){
                  //invocamos el texto de la clase MyTile dentro del archibo my_tile
                  return const MyTile();
                },
              ),
              ),
            ],
          ),
          ),
          Expanded(child: Column(
            children: [
              //configuracion para espacio publicitario
              Expanded(child: Container(
                //incluimos la imagen publicitaria
                child: Image.asset('asses/Cocacola.jpg'),
              ))
            ],
          ))
        ],
      ),
    );
  }
}
