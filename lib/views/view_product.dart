import 'package:firebase/screens/products_screen.dart';
import 'package:flutter/material.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({Key? key}) : super(key: key);

  @override
  _ViewProductsState createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listado de productos con Firebase'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/agregar');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListProducts(),
    );
  }
}