import 'package:flutter/material.dart';

class RegisteredHospitals extends StatefulWidget {
  const RegisteredHospitals({super.key});

  @override
  State<RegisteredHospitals> createState() => _RegisteredHospitalsState();
}

class _RegisteredHospitalsState extends State<RegisteredHospitals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inner Shadow Effect'),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 250,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 10, 121, 211),
                      offset: Offset(0, 10)),
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 255, 255),
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: const Center(child: Text('Geeks for Geeks')),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.green,
                  ),
                  BoxShadow(
                    color: Colors.white70,
                    spreadRadius: -5.0,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: const Center(child: Text('Geeks for Geeks')),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.green,
                  ),
                  BoxShadow(
                    color: Colors.white70,
                    spreadRadius: -5.0,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: const Center(child: Text('Geeks for Geeks')),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0, -5),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
