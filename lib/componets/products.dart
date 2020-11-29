import 'package:flutter/material.dart';
import 'package:testapp/pages/productdetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Gents Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": 1200,
      "price": 850,
    },
    {
      "name": "Red Top",
      "picture": "assets/images/products/dress1.jpeg",
      "old_price": 900,
      "price": 700,
    },
    {
      "name": "Womens Blazer",
      "picture": "assets/images/products/blazer2.jpeg",
      "old_price": 1000,
      "price": 600,
    },
    {
      "name": "Short Top",
      "picture": "assets/images/products/dress2.jpeg",
      "old_price": 1400,
      "price": 1000,
    },
    {
      "name": "High Hills",
      "picture": "assets/images/products/hills1.jpeg",
      "old_price": 700,
      "price": 500,
    },
    {
      "name": "Hills",
      "picture": "assets/images/products/hills2.jpeg",
      "old_price": 600,
      "price": 450,
    },
    {
      "name": "Pants",
      "picture": "assets/images/products/pants1.jpg",
      "old_price": 1000,
      "price": 850,
    },
    {
      "name": "Body Fit Pants",
      "picture": "assets/images/products/pants2.jpeg",
      "old_price": 1200,
      "price": 950,
    },
    {
      "name": "Shoe",
      "picture": "assets/images/products/shoe1.jpg",
      "old_price": 1800,
      "price": 1400,
    },
    {
      "name": "Skirt",
      "picture": "assets/images/products/skt1.jpeg",
      "old_price": 700,
      "price": 550,
    },
    {
      "name": "Hip Skirt",
      "picture": "assets/images/products/skt2.jpeg",
      "old_price": 650,
      "price": 500,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  //passing values from product to product details
                  builder: (context) => new ProductDetails(
                        product_details_name: prod_name,
                        product_details_price: prod_price,
                        product_details_old_price: prod_old_price,
                        product_details_picture: prod_picture,
                      ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    title: Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$$prod_old_price",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
