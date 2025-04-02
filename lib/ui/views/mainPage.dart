import 'package:flutter/material.dart';
import 'package:flutter_application_8/data/entity/products.dart';
import 'package:flutter_application_8/ui/views/detailPage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

  Future<List<Product>> uploadProduct() async {
    var productList=<Product>[];
    var p1=Product(id: 1, price: 1000, name: "Macbook Pro 14", picture: "computer.png");
    var p2=Product(id: 2, price: 900, name: "Rayban Club Master", picture: "glasses.png");
    var p3=Product(id: 3, price: 1500, name: "Sony ZX Series", picture: "headphone.png");
    var p4=Product(id: 4, price: 1200, name: "Gio Armani", picture: "perfume.png");
    var p5=Product(id: 5, price: 800, name: "Casio X Series", picture: "watch.png");
    var p6=Product(id: 6, price: 1000, name: "Dyson V8", picture: "cleaner.png");
    var p7=Product(id: 7, price: 2000, name: "Iphone 13", picture: "phone.png");
    productList.add(p1);
    productList.add(p2);
    productList.add(p3);
    productList.add(p4);
    productList.add(p5);
    productList.add(p6);
    productList.add(p7);
    return productList;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        backgroundColor: Colors.blueGrey,
      ),
      body: FutureBuilder<List<Product>>(
        future: uploadProduct(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            var productList=snapshot.data;
            return ListView.builder(
              itemCount: productList!.length,
              itemBuilder: (context,index){
                var product = productList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Detailpage(product: product)));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(width: 128, height: 128,
                            child: Image.asset("images/${product.picture}")),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.name),
                            Text("${product.price} \$ ", style: TextStyle(fontSize: 20),),
                            ElevatedButton(onPressed: (){
                              print(" ${product.name} has been added to cart");
                            }, child: const Text("ADD TO CART")),
                  
                  
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }
          else{
            return Center();
          }
        }
        ),
    );
  }
}