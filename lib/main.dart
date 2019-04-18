import 'package:exemplo_flutternews/widgets/ListaNoticia.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() =>runApp(new MinhasNoticias());

class MinhasNoticias extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(

      title: "Flutter News",

      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),


      home: new ListaNoticia(),

    );
  }
}


