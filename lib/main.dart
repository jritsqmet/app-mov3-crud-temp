import 'package:flutter/material.dart';

void main(){
  runApp(AppFireB());
}

/////////////////////////////////////////////////////
class AppFireB extends StatefulWidget {
  const AppFireB({super.key});

  @override
  State<AppFireB> createState() => _AppFireBState();
}

class _AppFireBState extends State<AppFireB> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}
/////////////////////////////////////////////////////
///
/////////////////////////////////////////////////////

class Cuerpo extends StatefulWidget {
  const Cuerpo({super.key});

  @override
  State<Cuerpo> createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("FIREBASE CRUD"),),
      body: Text("Hola"),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.logo_dev), label: "Guardar"),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: "Leer"),
        BottomNavigationBarItem(icon: Icon(Icons.update_sharp), label: "Editar")
      ]),
    );
  }
}