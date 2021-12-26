import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.scaleDown,
              height: 300,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text('Login'),
                    style:
                        TextButton.styleFrom(minimumSize: const Size(120, 40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
