import 'package:exemplo_t2s_duas_telas/routes.dart';
import 'package:exemplo_t2s_duas_telas/tela_principal.dart';
import 'package:flutter/material.dart';

class AppTelaPrincipal extends StatefulWidget {
  const AppTelaPrincipal({super.key});

  @override
  State<AppTelaPrincipal> createState() => _AppTelaPrincipalState();
}

class _AppTelaPrincipalState extends State<AppTelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: generateRoute,
      initialRoute: '/',
    );
  }
}
