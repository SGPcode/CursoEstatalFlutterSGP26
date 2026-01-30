
import 'package:flutter/material.dart';

void main() => runApp(MiTienda());
class MiTienda extends StatelessWidget {
  const MiTienda({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          backgroundColor:Colors.blue ,
          leading: Icon(Icons.add_a_photo),
          leadingWidth: 100,
          title: Text('Mi tienda Sergio 114'), 
          centerTitle: true
          ),
        
        body: Center(child: Text('Lista de Productos Disponibles')),
      ),
    );
  }
}