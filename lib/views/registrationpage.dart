import 'package:flutter/material.dart';

import 'package:new_app/main.dart';
import 'package:new_app/views/home_page.dart';

class Registrationpage extends StatefulWidget {
  const Registrationpage({super.key});

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  final _formkey = GlobalKey<FormState>();

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Form(
          key: _formkey,
          child: Column(
            spacing: 20,

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //circleAvater(radius: 35, child: Icon(Icons.person)),
              Image.asset("android/assests/man.jpg", height: 200, width: 200),

              Text(
                'Registation Screen',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == '' || value == null) {
                    return 'Name cannot be empty'; //we are not passing the error here.
                  } else if (value == 'Ram') {
                    return 'Name cannot be Ram';
                  } else {
                    return null; //this means no error as occured
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),

              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == '' || value == null) {
                    return 'Email cannot be empty'; //we are not passing the error here.
                  } else if (value == 'Ram') {
                    return 'Name cannot be Ram';
                  } else {
                    return null; //this means no error as occured
                  }
                },
              ),

              TextFormField(
                controller: passwordcontroller,
                autovalidateMode: AutovalidateMode.onUserInteraction,

                validator: (value) {
                  if (value == '' || value == null) {
                    return 'Password cannot be empty'; //we are not passing the error here.
                  } else if (value.length < 3) {
                    return 'Password too short';
                  } else {
                    return null; //this means no error as occured
                  }
                },
                obscureText: true, //hides the text while typing
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    if (emailcontroller.text == 'swastika@gmail.com' &&
                        passwordcontroller.text == 'swastika123') {
                      //if the above condition is setisfied,then goto MyHomePage
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return MyHomePage();
                          },
                        ),
                      );

                      Navigator.of(context).pop();
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Form Submited."),
                        backgroundColor: const Color.fromARGB(255, 66, 220, 71),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
