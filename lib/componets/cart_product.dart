import 'package:flutter/material.dart';

class Cart_product extends StatefulWidget {
  @override
  _Cart_productState createState() => _Cart_productState();
}

class _Cart_productState extends State<Cart_product> {
  var Product_on_the_cart = [
    {
      "name": "Gents Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "price": 850,
      "colour": "Black",
      "size": "M",
      "quantity": 1,
    },
    {
      "name": "Red Top",
      "picture": "assets/images/products/dress1.jpeg",
      "price": 700,
      "colour": "Red",
      "size": "XL",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Product_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Product_on_the_cart[index]["name"],
            cart_prod_colour: Product_on_the_cart[index]["colour"],
            cart_prod_picture: Product_on_the_cart[index]["picture"],
            cart_prod_price: Product_on_the_cart[index]["price"],
            cart_prod_size: Product_on_the_cart[index]["size"],
            cart_prod_quantity: Product_on_the_cart[index]["quantity"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_colour;
  final cart_prod_size;
  final cart_prod_quantity;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_quantity,
    this.cart_prod_colour,
    this.cart_prod_size,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Card(
        
        child: ListTile(
          //body of the cart
        
          leading: new Image.asset(
            cart_prod_picture,
            width: 60.0,
            height: 60.0,
          ),
          title: new Text(cart_prod_name),
          subtitle: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text("Size:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(
                      cart_prod_size,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                    child: new Text("Colour:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(
                      cart_prod_colour,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              new Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(4.0),
                child: new Text(
                  "\$${cart_prod_price}",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          trailing: new Column(
            children:<Widget>[
              Expanded(
                child:
              new IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){}),),
              
               Expanded(
                  child: Padding(
           padding: const EdgeInsets.only(top: 7.0),
                child:
              new Text('${cart_prod_quantity}',),),),
             
        Expanded(
                child:
              new IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){}),
               ), ],
          ),

         ),
      ),
    );
  }
}
