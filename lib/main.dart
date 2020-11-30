import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//pages by me
import 'package:testapp/componets/horizontal_listview.dart';
import 'package:testapp/componets/products.dart';
import 'package:testapp/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 160.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/w1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text('My Shopper'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Cart()));
                })
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text('Name'),
                accountEmail: Text('Abcd1234@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: new BoxDecoration(color: Colors.pink),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home, color: Colors.pink),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person, color: Colors.pink),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Orders'),
                  leading: Icon(Icons.shopping_basket, color: Colors.pink),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Cart()));
                },
                child: ListTile(
                  title: Text('Shopping Cart'),
                  leading: Icon(Icons.shopping_cart, color: Colors.pink),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite, color: Colors.pink),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.blue),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
        body: new Column(
          children: <Widget>[
            image_carousel,

            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text('Categories'),
            ),

            //horizontal list
            HorizontalList(),

            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text('Recent products'),
            ),

            //gridview
             Flexible(child: Products()),
            
          ],
        ));
  }
}
