import 'package:flutter/material.dart';
//import  terlebih  dahulu  halaman  yang  diperlukan
import './detail_produk.dart';

//Top  Level/Root
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First  App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product  Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "ACER",
                    description: "Ini  laptop  acer core I5 ",
                    price: 1000,
                    image: "acer.jpg",
                    star: 1,
                  ),
                ));
              },
              child: ProductBox(
                name: "ACER",
                description: "Ini  laptop  ACer  Cangih",
                price: 1000,
                image: "acer.jpg",
              ),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "HP",
                      description:
                          "Pixel  is  the  most  featureful  phone  ever",
                      price: 800,
                      image: "adventor.jpg",
                      star: 4,
                    ),
                  ));
                },
                child: ProductBox(
                  name: "Adventorss",
                  description: "Pixel  is  the  most  featureful  phone  ever",
                  price: 800,
                  image: "adventor.jpg",
                )),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "ASUS",
                    description:
                        "Laptop  is  most  productive  development  tool",
                    price: 2000,
                    image: "asus.jpg",
                    star: 3,
                  ),
                ));
              },
              child: ProductBox(
                name: "ASUS",
                description: "laptop khusus gaming dan office",
                price: 2000,
                image: "asus.jpg",
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Macbook",
                    description: "Laptop dengan tampilan yang mewah",
                    price: 1500,
                    image: "macbook_air.jpg",
                    star: 3,
                  ),
                ));
              },
              child: ProductBox(
                name: "Macbook",
                description: "Laptop dengan tampilan yang mewah sekali",
                price: 1500,
                image: "macbook_air.jpg",
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Samsung",
                    description: "Laptop dengan tampilan yang mewah sekali",
                    price: 100,
                    image: "samsung.jpg",
                    star: 5,
                  ),
                ));
              },
              child: ProductBox(
                name: "Samsung",
                description: "Laptop dengan tampilan yang mewah sekali",
                price: 100,
                image: "samsung.jpg",
              ),
            ),
          ],
        ));
  }
}

//menggunakan  widget  StatelessWidget
class ProductBox extends StatelessWidget {
//deklarasi  variabel  yang  diterima  dari  MyHomePage
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
//menampung  variabel  yang  diterima  untuk  dapat  digunakan  pada  class  ini
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
//menggunakan  widget  container
    return Container(
//padding
        padding: EdgeInsets.all(2),
        //  height:  120,
        //menggunakan  widget  card
        child: Card(
            //membuat  tampilan  secara  horisontal  antar  image  dan  deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children  digunakan  untuk  menampung  banyak  widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  //child  digunakan  untuk  menampung  satu  widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat  tampilan  secara  vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini  isi  tampilan  vertikal  tersebut
                        children: <Widget>[
                          //menampilkan  variabel  menggunakan  widget  text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price:  " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan  widget  icon    dibungkus  dengan  row
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(Icons.star,
                                      size: 10, color: Colors.orange),
                                ],
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
