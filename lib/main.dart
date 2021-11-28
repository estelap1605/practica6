import 'package:firebase/screens/products_screen.dart';
import 'package:firebase/views/agregar_product.dart';
import 'package:firebase/views/view_product.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/agregar'         : (BuildContext context) => AgregarProduct(),
      },
      home: ViewProducts(),
    );
  }
}