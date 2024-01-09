import 'package:flutter/material.dart';
import 'package:presentation_displays/secondary_display.dart';

class TelaSecundaria extends StatefulWidget {
  const TelaSecundaria({super.key});

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  String value = "Secundária";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secundária'),
      ),
        body: SecondaryDisplay(
          callback: (dynamic argument) {
            setState(() {
              value = argument;
            });
          },
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text(value),
            ),
          ),
        )
    );
  }
}
