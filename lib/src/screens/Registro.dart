import 'package:flutter/material.dart';

class Registrarse extends StatefulWidget {
  const Registrarse({super.key});

  @override
  State<Registrarse> createState() => _RegistrarseState();
}

class _RegistrarseState extends State<Registrarse> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
       child: Form(
        key:_formKey,
        child: Column(
                children: [
                  const SizedBox(height: 10),
                  
          const Text("REGISTRO",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(labelText: "Ingrese su Nombre y Apellido", 
            prefixIcon: const Icon(Icons.person),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(labelText: "Correo", 
              prefixIcon: const Icon(Icons.email_rounded),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Contraseña", 
              prefixIcon: const Icon(Icons.lock_open_rounded),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Confirmar contraseña", 
              prefixIcon: const Icon(Icons.lock_outline_rounded),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {},
               style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                backgroundColor: Colors.orangeAccent[700],
                foregroundColor: Colors.white,
               ),
               child: const Text('Regístrate'),
               ),
            ),
            const SizedBox(height: 20.0),
            TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/inicioDeSesion');
            },
             child: const Text(
              '¿Ya tienes una cuenta? Inicia Sesion',
              style: TextStyle(color: Colors.indigo),
             ))
          ]
        )
      )
    )
  )
));
}}