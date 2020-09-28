import 'package:flutter/material.dart';
import 'package:flutter_provider_max/providers/products.dart';
import 'package:flutter_provider_max/screens/product_detiale_screen.dart';
import 'package:flutter_provider_max/screens/products_overview_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Produtcs(),
      //builder: (context)=> Produtcs() ,
      child: ChangeNotifierProvider(
        create: (BuildContext context) {  Produtcs(); },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.yellow,
            accentColor: Colors.deepOrange,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'Anton',
          ),
          home: ProductsOverViewScreen(),
          routes: {
            ProductDetialeScreen.routName: (context) => ProductDetialeScreen(),
          },
        ),
      ),
    );
  }
}
