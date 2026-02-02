import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: PerfilScreen(),
    );
  }
}// fin clase MiApp

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text('Perfil de Usuario Sergio González Pérez Cbtis 114'),
        
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://i.postimg.cc/WpnRG7xD/SGP.png',
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('Sergio González Cbtis 114',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Sergio González Pérez es Desarrollador Flutter del Cbtis 114'),
                    Text('sergio.gonzalez@cbtis114.edu.mx'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}// fin clase PerfilScreen