import 'package:flutter/material.dart';
import 'package:castaneda0327/pantallas0327/panel0327/panel_pantalla0327.dart';

void main() => runApp(MiAppFerrari0327());

class MiAppFerrari0327 extends StatelessWidget {
  const MiAppFerrari0327({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ferrari Castaneda 0327",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true),
      home: PanelPantalla0327(),
    );
  }
}
