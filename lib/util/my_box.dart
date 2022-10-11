import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(child: _buildGrid())
      ),
    );
  }

  Widget _buildGrid() =>
      GridView.extent(
        maxCrossAxisExtent: 200,
        padding: const EdgeInsets.all(1),
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        children: _buildGridTileList(4),
      );

  //creamos un lista para las imagenes
  List<Container> _buildGridTileList(int count) =>
      List.generate(
          count, (i) => Container(
          color: Colors.amber,
          width: 100,
          height: 100,
          child: Image.asset('asses/frut$i.jpg')));
}