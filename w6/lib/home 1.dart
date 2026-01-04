import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Elevated Button'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 80),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text("Outlined Button"),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(300, 80),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Text Button"),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(300, 80),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
