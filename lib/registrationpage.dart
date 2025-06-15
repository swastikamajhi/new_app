import 'package:flutter/material.dart';
import 'package:new_app/main.dart';

class Registrationpage extends StatefulWidget {
  const Registrationpage({super.key});

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  final _formkey = GlobalKey<FormState>();
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: 'Password',

                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == '' || value == null) {
                    return 'Password cannot be empty'; //we are not passing the error here.
                  } else if (value == 'Ram') {
                    return 'Password to short';
                  } else {
                    return null; //this means no error as occured
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Form Submited."),
                        backgroundColor: Colors.green,
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
