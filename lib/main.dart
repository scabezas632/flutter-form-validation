import 'package:flutter/material.dart';
import 'package:flutter_form_validation/src/blocs/provider.dart';

import 'package:flutter_form_validation/src/pages/home_page.dart';
import 'package:flutter_form_validation/src/pages/login_page.dart';
import 'package:flutter_form_validation/src/pages/producto_page.dart';
import 'package:flutter_form_validation/src/pages/registro_page.dart';
import 'package:flutter_form_validation/src/shared_preferences/preferencias_usuario.dart';
 
void main() async {
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = new PreferenciasUsuario();
    print(prefs.token);

    return Provider(
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'home': (BuildContext context) => HomePage(),
          'producto': (BuildContext context) => ProductoPage(),
          'registro': (BuildContext context) => RegistroPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple
        ),
      ),
    );
  }
}