// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mercado_pago_col/src/screens/PaginaDeInicio.dart';
import 'package:mercado_pago_col/src/screens/Login.dart';
import 'package:mercado_pago_col/src/screens/Registro.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PaginaDeInicio(),
      routes: {
        '/inicioDeSesion': (context) => const Login(),
        '/registroDeUsuarios':(context) => const Registrarse()
      },
    );
  }
}
