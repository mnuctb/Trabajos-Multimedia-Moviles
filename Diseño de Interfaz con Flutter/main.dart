import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Árbol divino';
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back), 
          centerTitle: true,
          title: const Text(appTitle), 
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.star_border), // Estrella
            )
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [

              
              const Image(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1683002668970-1a63fc4c55ad?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0',
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oeschinen Lake Campground',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.red),
                        Text('41'),
                        SizedBox(width: 20),
                      ],
                    )
                  ],
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call,
                          color: Color.fromARGB(255, 119, 72, 230),
                          size: 36.0),
                      SizedBox(height: 8),
                      Text('CALL',
                          style: TextStyle(
                              color:
                                  Color.fromARGB(255, 119, 72, 230),
                              fontSize: 12.0)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.near_me,
                          color: Color.fromARGB(255, 119, 72, 230),
                          size: 36.0),
                      SizedBox(height: 8),
                      Text('ROUTE',
                          style: TextStyle(
                              color:
                                  Color.fromARGB(255, 119, 72, 230),
                              fontSize: 12.0)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share,
                          color: Color.fromARGB(255, 119, 72, 230),
                          size: 36.0),
                      SizedBox(height: 8),
                      Text('SHARE',
                          style: TextStyle(
                              color:
                                  Color.fromARGB(255, 119, 72, 230),
                              fontSize: 12.0)),
                    ],
                  ),
                ],
              ),

              const Padding(
                padding: EdgeInsets.all(32),
                child: Text(
                  'Lake Oeschinen lies at the foot of the Blüemlisalp' 
                  'Bernese Alps. Situated 1,578 meters above sea level, it '
                  'is one of the larger Alpine Lakes. A gondola ride from '
                  'Kandersteg, followed by a half-hour walk through pastures '
                  'and pine forest, leads you to the lake, which warms to 20 '
                  'degrees Celsius in the summer. Activities enjoyed here include '
                  'rowing, and riding the summer toboggan run.',
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 14, 
                    height: 1.4
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Color:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _circle(Colors.red),
                  _circle(Colors.blue),
                  _circle(Colors.green),
                  _circle(Colors.black),
                ],
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Add to Cart"),
                      ),
                    ),

                    const SizedBox(width: 15),

                    // Botón corazón
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static Widget _circle(Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}