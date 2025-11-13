import 'package:flutter/material.dart';

enum Products {dart, flutter, firebase}

void main() {
    runApp(
        MaterialApp(
           home: Scaffold(
                backgroundColor: Colors.blue,
                appBar: AppBar(
                  title: Text("Products"),
                ),
                body: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      ProductCard(title: "Dart", description: "the best object language", image: '../assets/ex3/dart.png', product: Products.dart),
                      ProductCard(title: "Flutter", description: "the best mobile widget library", image: '../assets/ex3/flutter.png', product: Products.flutter),
                      ProductCard(title: "Firebase", description: "the best cloud database", image: '../assets/ex3/firebase.png', product: Products.firebase)
                    ],
                  ),
                ),
            ),
        )
    );
}

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Products product;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: 60,
                height: 60,
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}