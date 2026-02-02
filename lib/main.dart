
import 'package:flutter/material.dart';

void main() => runApp(AppViajes());

class AppViajes extends StatelessWidget {
  const AppViajes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // TEMA Y COLOR
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: PantallaInicio(),
    );
  }
}// fin clase AppViajes

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destinos Turísticos Sergio González Pérez Cbtis 114"),
        backgroundColor: Colors.blue,
        ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        // COLUMNA PRINCIPAL
        child: Column(
          children: [
            // FILA 1
            Row(
              children: [
                Expanded(child: TarjetaLugar(
                  titulo: "Tenochtitlan, México,Sergio González Pérez Cbtis 114",
                  desc: "Lugar donde abundan los nopales sobre piedra",
                  url: "https://i.postimg.cc/SRcrkV8W/Tenochtitlan.jpg",
                )),
              ],
            ),
            // FILA 2
            Row(
              children: [
                Expanded(child: TarjetaLugar(
                  titulo: "Chichén Itzá, México Sergio González Pérez Cbtis 114",
                  desc: "La ciudad al borde del pozo de los Itzáes",
                  url: "https://i.postimg.cc/Y9q8NQJX/Chichen-Itza.jpg",
                )),
              ],
            ),
           

          ],
        ),
      ),
    );
  }
}// fin de la clase PantallaInicio

class TarjetaLugar extends StatelessWidget {
  final String titulo, desc, url;
  const TarjetaLugar({super.key, required this.titulo, required this.desc, required this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row( // Row dentro de la card para poner imagen a la izquierda
          children: [
            Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(desc),
              ],
            )
          ],
        ),
      ),
    );
  }
}// fin de la clase TarjetaLugar