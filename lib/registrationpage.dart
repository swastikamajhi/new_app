import 'package:flutter/material.dart';
import 'package:new_app/main.dart';

class Registrationpage extends StatelessWidget {
  const Registrationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          spacing: 20,

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Registation Screen',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),

            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),

            TextField(
              decoration: InputDecoration(
                hintText: 'Password',

                border: OutlineInputBorder(),
              ),
            ),

            ElevatedButton(onPressed: () {}, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
