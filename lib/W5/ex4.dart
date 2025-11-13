import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: 
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Icon(Icons.menu, color: Colors.white)
            ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20, left: 5, right: 5),
          child: ListView(
            children: [
              WeatherCard(
                imagePath: '../assets/ex4/cloudy.png', 
                city: "Phnom Penh", 
                minTemp: 10.0, 
                maxTemp: 30.0, 
                currentTemp: 12.2, 
                colorFrom: Color(0xFFB57EDC), 
                colorTo: Color(0xFF9C6ADE)
              ),
              SizedBox(height: 20),
              WeatherCard(
                imagePath: '../assets/ex4/sunnyCloudy.png', 
                city: "Paris", 
                minTemp: 10.0, 
                maxTemp: 40.0, 
                currentTemp: 22.2, 
                colorFrom: Color.fromARGB(255, 112, 191, 149), 
                colorTo: Color.fromARGB(255, 60, 207, 138)
              ),
              SizedBox(height: 20),
              WeatherCard(
                imagePath: '../assets/ex4/sunny.png', 
                city: "Rome", 
                minTemp: 10.0,
                maxTemp: 40.0, 
                currentTemp: 45.2,
                colorFrom: Color.fromARGB(255, 236, 114, 114),
                colorTo: Color.fromARGB(255, 226, 78, 78)
              ),
              SizedBox(height: 20),
              WeatherCard(
                imagePath: '../assets/ex4/veryCloudy.png', 
                city: "Toulouse", 
                minTemp: 10.0, 
                maxTemp: 40.0, 
                currentTemp: 45.2, 
                colorFrom: Color.fromARGB(255, 218, 183, 126), 
                colorTo: Color.fromARGB(255, 237, 166, 74)
              ),
            ],
          ),
      ),
    ),
    )
  );
}

class WeatherCard extends StatelessWidget {
  final String imagePath;
  final String city;
  final double minTemp;
  final double maxTemp;
  final double currentTemp;
  final Color colorFrom;
  final Color colorTo;

  const WeatherCard({
    super.key,
    required this.imagePath,
    required this.city,
    required this.minTemp,
    required this.maxTemp,
    required this.currentTemp,
    required this.colorFrom,
    required this.colorTo,
  });

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
              color: Colors.transparent,
              shadowColor: Colors.black,
              elevation: 8.0,
              borderRadius: BorderRadius.circular(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        colorFrom,
                        colorTo]),
                  ),
              child: Stack(
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(imagePath),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    city,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.6,
                                    child: Column(
                                      children: [
                                        Text(
                                          'min $minTemp °C',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'max $maxTemp °C',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '$currentTemp °C',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -50,
                    top: -20,
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withValues(alpha: 0.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}