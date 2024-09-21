import 'package:flutter/material.dart';
import 'package:second_lab_prac/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController txtEmailController = TextEditingController();
  TextEditingController txtPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 250, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 50),
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        controller: txtEmailController,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .white70), // Outline color when not focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white70,
                                width: 2.0), // Outline color when focused
                          ),
                          hintText: "johndoe@gmail.com",
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.white70),
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        controller: txtPasswordController,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .white70), // Outline color when not focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white70,
                                width: 2.0), // Outline color when focused
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage(
                                  email: txtEmailController.text,
                                  password: txtPasswordController.text)));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5), // Set border radius here
                          ),
                        ),
                        child: Text("Login",
                            style: TextStyle(color: Colors.blue[800])),
                      )
                    ],
                  ),
                ))));
  }
}
