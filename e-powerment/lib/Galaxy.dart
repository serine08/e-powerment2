import 'package:flutter/material.dart';

class Galaxy extends StatefulWidget {
  const Galaxy({Key? key}) : super(key: key);

  @override
  State<Galaxy> createState() => _GalaxyState();
}

class _GalaxyState extends State<Galaxy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/PlandeTravail2.png"),
              fit:BoxFit.cover
          ),
        ),
      ),
    );
  }
}
