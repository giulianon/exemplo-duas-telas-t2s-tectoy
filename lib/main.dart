import 'package:flutter/material.dart';
import 'app_tela_principal.dart';
import 'app_tela_secundaria.dart';

void main() {
  runApp(const AppTelaPrincipal());
}

@pragma('vm:entry-point')
void secondaryDisplayMain() {
  runApp(const AppTelaSecundaria());
}

