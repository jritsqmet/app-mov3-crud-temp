import 'package:app_crud/screens/editar_Screen.dart';
import 'package:app_crud/screens/escribir_Screen.dart';
import 'package:app_crud/screens/leer_Screen.dart';
import 'package:flutter/material.dart';

//FIREBASE
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
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
  int indice = 0;
  List<Widget> paginas = [
    Escribir(),
    Leer(),
    Editar()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIREBASE CRUD"),
      ),
      body: paginas[indice],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indice,
          selectedItemColor: Color.fromRGBO(255, 0, 0, 1),
          onTap: (value) => setState(() {
                indice = value;
              }),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.logo_dev), label: "Guardar"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded), label: "Leer"),
            BottomNavigationBarItem(
                icon: Icon(Icons.update_sharp), label: "Editar")
          ]),
    );
  }
}
