import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
          children: const[
            //creamos card las cuales seran retornadas en el pagina principal
            Card(child:
            ListTile(
              contentPadding: EdgeInsets.all(8.0),
              title: Text('Manzana'),
            ),
            ),
            Card(child:
            ListTile(
              contentPadding: EdgeInsets.all(8.0),
              title: Text('Lulo'),
            ),
            ),


            Card(child:
            ListTile(
              contentPadding: EdgeInsets.all(8.0),
              title: Text('Mango'),
            ),
            ),

          ]
      ),
    );
  }
}