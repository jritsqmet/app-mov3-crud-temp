import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Editar extends StatelessWidget {
  const Editar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          editarUsuario(),
          Divider(),
          eliminarUsuario()
        ],
      )
    );
  }
}

Widget editarUsuario(){
  TextEditingController cedula = TextEditingController();
  TextEditingController nombre = TextEditingController();
  TextEditingController ciudad = TextEditingController();

  return Column(
    children: [
      TextField(
        keyboardType: TextInputType.numberWithOptions(),
        controller: cedula,
        decoration: InputDecoration(
            label: Text("cédula"), border: OutlineInputBorder()),
      ),
      TextField(
        controller: nombre,
        decoration: InputDecoration(
            label: Text("nombre"), border: OutlineInputBorder()),
      ),
      TextField(
        controller: ciudad,
        decoration: InputDecoration(
            label: Text("ciudad"), border: OutlineInputBorder()),
      ),

      FilledButton(onPressed: ()=> editar(cedula.text, nombre.text, ciudad.text), 
      child: Text("EDITAR", style: TextStyle(fontSize: 30),))
    ],
  );
}


Future<void> editar( cedula, nombre, ciudad) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("usuarios/"+cedula);

await ref.update({
  "nombre": nombre,
  "ciudad": ciudad,
  
});
}

/////////////////////////////////////////////////////////////
///
////////////// ELIMINAR /////////////////////////////

Widget eliminarUsuario(){
  TextEditingController _cedula = TextEditingController();

  return Column(
    children: [
      TextField(
        controller: _cedula,
        decoration:InputDecoration(
          label: Text("Cédula"),
          border: OutlineInputBorder()
        ),
      ),
      IconButton.filled(onPressed: ()=> eliminar(_cedula.text), 
      icon: Icon(Icons.delete))
    ],
  );
}

Future<void> eliminar( cedula) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("usuarios/"+cedula);

await ref.remove();
}