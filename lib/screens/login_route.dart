import 'package:flutter/material.dart';
import 'package:flutter_artshop/screens/landing_route.dart';

class LoginRoute extends StatelessWidget {
  const LoginRoute({super.key});

  static String name = "landing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.palette,
              color: Colors.amber,
            ),
            onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingRoute())),
                }),
        title: const Text(
          'Login Page',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
