import 'package:flutter/material.dart';

void main() => runApp(AppSocial());

class AppSocial extends StatelessWidget {
  const AppSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      // DEFINICIÓN DE RUTAS
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const PantallaInicio(),
        '/perfil': (BuildContext context) => const PantallaPerfil(),
      },
    );
  }
}// fin clase AppSocial con herencia

// --- WIDGET PERSONALIZADO PARA EL DRAWER (Para no repetir código) ---
class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // ENCABEZADO CON AVATAR Y DESCRIPCIÓN
          const UserAccountsDrawerHeader(
            accountName: Text("Sergio González Cbtis 114"), // <-- Aqui tu nombre y Cbtis
            accountEmail: Text("sergio.gonzalez@cbtis114.edu.mx"), // <-- Aqui tu correo
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://i.postimg.cc/WpnRG7xD/SGP.png"),
            ),
          ),
          // OPCIÓN 1
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Inicio Cbtis 128"), // aqui Indica Tu Numero Cbtis
            onTap: () => Navigator.pushNamed(context, '/'),
          ),
          // OPCIÓN 2
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Mi Perfil de Eliseo 128 "),// aqui modifica tu nombre
            onTap: () => Navigator.pushNamed(context, '/perfil'),
          ),
        ],
      ),
    );
  }
}// fin clase AppSocial con herencia

// --- PANTALLAS ---
class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio Eliseo 128"),
        backgroundColor: Colors.amberAccent,
      ),
      drawer: const MiDrawer(), // Agregamos el Drawer aquí
      body: const Center(child: Text("Bienvenido a la App Social del Cbtis 128")),
    );
  }
}// fin clase PantallaInicio

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: const MiDrawer(), // Agregamos el Drawer aquí también
      body: const Center(child: Text("Información del Usuario Eliseo 128")),
    );
  }
}// fin clase PantallaPerfil