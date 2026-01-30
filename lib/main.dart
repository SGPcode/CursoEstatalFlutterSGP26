import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main() => runApp(MiappRegistro());

class MiappRegistro extends StatelessWidget {
  const MiappRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Registro González",
      theme: ThemeData(primarySwatch: Colors.blue),
      //rutas nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaBienvenida(),
        '/datos': (context) => const PantallaDatos(),
        '/final': (context) => const PantallaFinal(),
      }, //Fin de rutas nombradas
    );
  } //Fin widget build
} // Fin clase MiappRegistro

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenido González 114"),
        backgroundColor: Colors.amber,
      ),
      body:Center(child: ElevatedButton(
        onPressed: ()=>Navigator.pushNamed(context, '/datos'),
        child:Text('Empezar Registro'),

      ),
      ),

    );
  } 
} // Fin pantalla Bienvenido
class PantallaDatos extends StatelessWidget {
  const PantallaDatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datos personales"),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: ElevatedButton(
        onPressed: ()=>Navigator.pushNamed(context, '/final'),
        child:Text('Finalizar Registro'),
      ),
      ),
    );
  }
}//Fin Pantalla Datos
class PantallaFinal extends StatelessWidget {
  const PantallaFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Final"),
        backgroundColor: Colors.green,
      ),
    body:Center(
        child: ElevatedButton(
        onPressed: ()=>Navigator.pushNamed(context, '/'),
        child:Text('Volver a Bienvenida'),
    ),
    ),
    );
  }
}