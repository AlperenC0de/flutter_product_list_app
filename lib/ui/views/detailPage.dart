import 'package:flutter/material.dart';
import 'package:flutter_application_8/data/entity/products.dart';

class Detailpage extends StatefulWidget {
  final Product product;
  Detailpage({required this.product});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.product.picture}"),
            Text("${widget.product.price} \$ ", style: TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}