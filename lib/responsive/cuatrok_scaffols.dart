import 'package:flutter/material.dart';
import 'package:proyecto_responsive/constants.dart';
import 'package:proyecto_responsive/util/my_tile.dart';
import 'package:proyecto_responsive/util/my_box.dart';

class CuatrokScaffold extends StatefulWidget {
  const CuatrokScaffold({Key? key}) : super(key: key);

  @override
  State<CuatrokScaffold> createState() => _CuatrokScaffoldState();
}

class _CuatrokScaffoldState extends State<CuatrokScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //llamamos el appBar anteriormente definido
      appBar: myAppbar,
      backgroundColor: myDefaultBackground,  //en el body encontraremos espacios para imagenes princpale, Texto de la pagina principal y una publicidad
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 5,
            child: Column(
              children: [
                AspectRatio(aspectRatio: 6,
                  child: SizedBox(
                    //configuracion para magines principales
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 6,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 6),
                      itemBuilder: (context, index){
                        //invocamos las imagenes que han sido modificadas la clase MyBox dentro del archivo my_box
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                Expanded(child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    //invocamos el texto de la clase MyTile dentro del archibo my_tile
                    return const MyTile();
                  },
                ),
                ),
              ],
            ),
          ),
          //configuracion para espacio publicitario
          Expanded(child: Column(
            children: [
              Expanded(child: Container(
                child: const Image(
                  //incluimos la imagen publicitaria
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHJl5Mf2I4Ll_WXP_rQeN2OXSdv2hrX2rsbg&usqp=CAU'),
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }
}