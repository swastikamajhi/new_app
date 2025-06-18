import 'package:flutter/material.dart';
import 'package:new_app/models/fruit_model.dart';

class FruitsDetailPage extends StatelessWidget {
  final FruitModel fruit;
  const FruitsDetailPage({super.key, required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fruits Detail Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(fruit.imageUrl, height: 100, width: 100),
            Text(
              fruit.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(fruit.price, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
