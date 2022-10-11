import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

//Se define el Appbar que sera utilizado en toda la pagina
var myAppbar = AppBar(
  backgroundColor: Colors.orange,
  title: const Center(child: Text('Alca')),
  actions: const [
    Image(image: AssetImage('asses/nada.jpg'), width: 200, height: 200,)
  ],
);

//Se crea el Drawer donde encontraremos información del usuario

var myDrawer = Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(
            color: Colors.deepOrange
        ),
        child: Column(
          children: const [
            Text('U S U A R I O',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 70.0,
            )
          ],
        ),
      ),
      const ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('P r i n c i p a l'),
      ),
      const ListTile(
        leading: Icon(
          Icons.chat,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('M e n s a j e s'),
      ),
      const ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('C o n f i g u r a c i ó n'),
      ),
      const ListTile(
        leading: Icon(
          Icons.logout,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('S a l i r'),
      ),
      const ListTile(
        leading: Icon(
          Icons.star,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('F A V O R I T O'),
      ),
    ],
  ),
);