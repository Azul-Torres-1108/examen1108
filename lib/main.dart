import 'package:flutter/material.dart';

void main() {
  runApp(Examen1108());
}

class Examen1108 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContenedorAutonomo(),
    );
  }
}
class ContenedorAutonomo extends StatelessWidget {
  const ContenedorAutonomo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60.0,  // Altura más baja del AppBar
        elevation: 10.0,  // Sombra más pronunciada
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mederyth Azul Torres',
              style: TextStyle(
                fontSize: 18.0,  // Tamaño de la letra mayor
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Roboto',  // Fuente 'Roboto'
                color: Colors.white,
              ),
            ),
            Text(
              'Mat: 22308051281108',
              style: TextStyle(
                fontSize: 14.0,  // Texto más pequeño
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListViewScreen(),
    );
  }
}
class ListViewScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'image': 'https://okdiario.com/img/2019/11/20/-por-que-brilla-el-sol-esta-es-la-razon.jpg', 'title': 'Sun'},
    {'image': 'https://upload.wikimedia.org/wikipedia/commons/1/10/Supermoon_Nov-14-2016-minneapolis.jpg', 'title': 'Moon'},
    {'image': 
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIgY0HGhWzUY31cA_zaKAj2SKEOLDfaCyWZjrld1BWrj7ZRqf6aSdgBON6QT0WQWgJalY&usqp=CAU',
     'title': 'Star'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(items[index]['image']!),
            onBackgroundImageError: (exception, stackTrace) {
              print("Error loading image: ${items[index]['image']}");
            },
          ),
          title: Text(items[index]['title']!),
        );
      },
    );
  }
}
