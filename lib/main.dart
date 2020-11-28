import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner : false,
    home: MyApp(),
  )
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('My Shopper'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){} ),
           new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){} )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName:Text('Name'),
              accountEmail:Text ('Abcd1234@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ) ,
                ),
                decoration: new BoxDecoration(
                  color: Colors.pink 
                ),
                ),
               
                InkWell(
                  onTap:(){},
                  child: ListTile(
                    title: Text('Home Page'),
                    leading:Icon(Icons.home, color:Colors.pink),
                  ),
                ),
                  InkWell(
                  onTap:(){},
                  child: ListTile(
                    title: Text('My Account'),
                    leading:Icon(Icons.person, color:Colors.pink),
                  ),
                ),
                  InkWell(
                  onTap:(){},
                  child: ListTile(
                    title: Text('Orders'),
                    leading:Icon(Icons.shopping_basket, color:Colors.pink),
                  ),
                ),
                  InkWell(
                  onTap:(){},
                  child: ListTile(
                    title: Text('Categoris'),
                    leading:Icon(Icons.dashboard, color:Colors.pink),
                  ),
                ),
                  InkWell(
                  onTap:(){},
                  child: ListTile(
                    title: Text('Favourites'),
                    leading:Icon(Icons.favorite, color:Colors.pink),
                  ),
                ),

                Divider(),

                  InkWell(
                  onTap:(){},
                  child: ListTile(
                    title: Text('Settings'),
                    leading:Icon(Icons.settings , color:Colors.blue),
                  ),
                ),
                  InkWell(
                  onTap:(){},
                  child: ListTile(
                    title: Text('About'),
                    leading:Icon(Icons.help, color:Colors.blue),
                  ),
                ),

          ],
          ),
      ),
    );
  }
}
