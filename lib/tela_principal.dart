import 'package:flutter/material.dart';
import 'package:presentation_displays/displays_manager.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  DisplayManager displayManager = DisplayManager();

  @override
  void initState() {
    displayManager.connectedDisplaysChangedStream?.listen((event) {
        debugPrint("connected displays changed: $event");
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principal'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Principal'),
            ElevatedButton(
              onPressed: () {
                displayManager.showSecondaryDisplay(
                    displayId: 1, routerName: "secundaria");
              },
              child: const Text('Exibir Secundária'),),
            ElevatedButton(
              onPressed: () {
                displayManager.hideSecondaryDisplay(displayId: 1);
              },
              child: const Text('Ocultar Secundária'),),
            ElevatedButton(
              onPressed: () async {
                await displayManager.transferDataToPresentation(DateTime.now().toString());
              },
              child: const Text('Enviar data e hora para a secundária'),)
          ],
        ),
      ),
    );
  }
}
