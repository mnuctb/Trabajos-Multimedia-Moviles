import 'package:flutter/material.dart';
import 'widgets/custom_header.dart';
import 'widgets/profile_card.dart';
import 'widgets/category_item.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 216, 205, 205),
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: const [
              CustomHeader(),
              SizedBox(height: 18),
              CategoryItem(title: "Filtros"),
              SizedBox(height: 20),
              Text(
                "Ubicación - Castilla, Bogotá",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              ProfileCard(
                name: "MATEO GÓMEZ",
                description:
                    "Amante de los perros y los viajes de último minuto. No busco nada complicado, solo pasar un buen rato y conocer gente nueva",
                age: "24 Años",
                imageUrl:
                    "https://randomuser.me/api/portraits/men/32.jpg",
              ),
              SizedBox(height: 20),
              ProfileCard(
                name: "LAURA MARTÍNEZ",
                description:
                    "Diseñadora creativa, amante del café y las caminatas al atardecer. Busco conversaciones interesantes y buena energía.",
                age: "22 Años",
                imageUrl:
                    "https://img.freepik.com/foto-gratis/mujer-joven-hermosa-sueter-rosa-calido-aspecto-natural-sonriente-retrato-aislado-cabello-largo_285396-896.jpg",
              ),
              SizedBox(height: 15),
              ProfileCard(
                name: "CARLOS RAMÍREZ",
                description:
                    "Apasionado por la tecnología y el deporte. Siempre listo para una aventura nueva o una buena charla.",
                age: "26 Años",
                imageUrl:
                    "https://img.freepik.com/foto-gratis/joven-sonriente-camiseta-blanca-retrato-estudio_285396-908.jpg",
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: const Color.fromARGB(255, 216, 205, 205),
          unselectedItemColor: const Color.fromARGB(255, 216, 205, 205),
          backgroundColor: const Color.fromARGB(255, 168, 168, 168),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notificaciones",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          ],
        ),
      ),
    );
  }
}