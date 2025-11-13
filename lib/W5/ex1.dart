import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: Text("My Hobbies")),
        body: Padding(padding: EdgeInsetsGeometry.all(20),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(title: "Travelling", icon: Icons.travel_explore, color: Colors.green),
              HobbyCard(title: "Skating", icon: Icons.skateboarding, color: Colors.blueGrey,)

              // Container(
              //   padding: EdgeInsets.all(30),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.green
              //   ),
              //   child: Center(
              //     child: Row(
              //       children: [
              //         Padding(padding: EdgeInsets.only(right: 20),
              //           child: Icon(
              //             Icons.travel_explore,
              //             size: 20,
              //             color: Colors.white,
              //           )
              //         ),
                      
              //         Text("Travelling",
              //         style: TextStyle(color: Colors.white),
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        )
      ),
    )
  );
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color;

  const HobbyCard({super.key, required this.title, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color
            ),
            child: Center(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      icon,
                      size: 20,
                      color: Colors.white,
                    )
                  ),
                      
                  Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          );
  }
}