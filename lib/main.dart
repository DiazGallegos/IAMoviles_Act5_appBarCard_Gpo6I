import 'package:flutter/material.dart';

void main() => runApp(AppBurgerKing());

class AppBurgerKing extends StatelessWidget {
  const AppBurgerKing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Burger King', home: Burger());
  }
} //fin clase AppBurgerKing

class Burger extends StatelessWidget {
  const Burger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burger King'),
        backgroundColor: Colors.deepOrange,
        actions: const [
          Icon(Icons.bedroom_child),
          SizedBox(width: 10),
          Icon(Icons.flight),
          SizedBox(width: 15),
        ],
      ),
      drawer: const Drawer(),
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            // DEGRADADO GUINDA OSCURO
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF800020), // Guinda
                Color(0xFF4A0000), // Guinda más oscuro
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 15,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ajusta el alto al contenido
            children: [
              // AVATAR DE CR7
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white12,
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://raw.githubusercontent.com/DiazGallegos/IAMoviles_Act5_appBarCard_Gpo6I/refs/heads/main/diaz.png',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // TITULO
              const Text(
                'Christian Diaz',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              // SUBTITULO
              const Text(
                'Gerente de ventas',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  letterSpacing: 1.1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
