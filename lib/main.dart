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
    );
  }
}