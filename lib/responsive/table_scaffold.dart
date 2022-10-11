import 'package:flutter/material.dart';
import 'package:proyecto_responsive/constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      drawer: myDrawer,
      backgroundColor: myDefaultBackground,
      body: Column(
        children: [
          AspectRatio(aspectRatio: 4,
            child: SizedBox(
              //retornamos las imagenes que se encuentran el el archivo my_box
              width: double.infinity,
              child: GridView.builder(
                itemCount: 1,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                itemBuilder: (context, index){
                  return const MyBox();
                },
              ),
            ),
          ),
          Expanded(child: ListView.builder(
            //retornamos las cards que se encuentran en el archivo my_tile
            itemCount: 10,
            itemBuilder: (context, index){
              return const MyTile();
            },
          ))
        ],
      ),
    );
  }
}
