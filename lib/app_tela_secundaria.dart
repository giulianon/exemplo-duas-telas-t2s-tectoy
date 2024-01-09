import 'package:exemplo_t2s_duas_telas/routes.dart';
import 'package:exemplo_t2s_duas_telas/tela_secundaria.dart';
import 'package:flutter/material.dart';

class AppTelaSecundaria extends StatefulWidget {
  const AppTelaSecundaria({super.key});

  @override
  State<AppTelaSecundaria> createState() => _AppTelaSecundariaState();
}

class _AppTelaSecundariaState extends State<AppTelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: generateRoute,
      initialRoute: 'presentation',
    );
  }
}
