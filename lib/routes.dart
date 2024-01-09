import 'package:exemplo_t2s_duas_telas/tela_principal.dart';
import 'package:exemplo_t2s_duas_telas/tela_secundaria.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const TelaPrincipal());
    case 'secundaria':
      return MaterialPageRoute(builder: (_) => const TelaSecundaria());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text('No route defined for ${settings.name}')),
          ));
  }
}