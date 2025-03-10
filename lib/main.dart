import 'package:flutter/material.dart';

void main() {
  runApp(Examen1108());
}

class Examen1108 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color.fromARGB(255, 253, 221, 228)), // Rosa pastel
      home: GroupListViewDemo(),
    );
  }
}

class GroupListViewDemo extends StatelessWidget {
  final Map<String, List<Map<String, dynamic>>> teams = {
    "Team A": [
      {"name": "Klay Lewis", "color": Color(0xFFFFB3BA)}, // Rojo pastel
      {"name": "Ehsan Woodard", "color": Color(0xFFE2C2F2)}, // Morado pastel
      {"name": "River Bains", "color": Color(0xFFAEC6CF)}, // Azul pastel
    ],
    "Team B": [
      {"name": "Toyah Downs", "color": Color(0xFFF4C2C2)}, // Rosa claro
      {"name": "Tyla Kane", "color": Color(0xFFB2DFDB)}, // Verde agua pastel
    ],
    "Team C": [
      {"name": "Marcus Romero", "color": Color.fromARGB(255, 179, 158, 128)}, // Naranja pastel
      {"name": "Farrah Parkes", "color": Color(0xFFE2C2F2)}, // Morado pastel
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mederyth Azul Torres",
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "22308051281108",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
        backgroundColor: Color(0xFFFFD1DC), // Rosa pastel
      ),
      body: ListView.builder(
        itemCount: teams.keys.length,
        itemBuilder: (context, index) {
          String team = teams.keys.elementAt(index);
          List<Map<String, dynamic>> members = teams[team]!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  team,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ...members.map((member) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: member["color"],
                          child: Text(
                            member["name"].split(" ").map((e) => e[0]).join(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(member["name"]),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ))
            ],
          );
        },
      ),
    );
  }
}
