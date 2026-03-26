import 'package:flutter/material.dart';

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text(
                    "Bienvenido al zoológico",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Disfruta de una experiencia inolvidable con nuestra variedad de animales.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  )
                ],
              ),
              // Imagen desde red (más seguro si no tienes los assets configurados localmente)
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/l.webp'),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  // Botón Login con navegación nombrada
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text("Login", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                  const SizedBox(height: 20),
                  // Botón Sign Up
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}