import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project_flutter/kalkulator_page.dart';
import 'package:project_flutter/login_page.dart';
import 'package:project_flutter/login_clone.dart';
import 'package:project_flutter/pages/kalkulator_page_stl.dart';
import 'package:project_flutter/pages/login_clone_page.dart';
import 'package:project_flutter/pages/kalkulator_page_stl.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: KalkulatorPageStl(),
      //home: LoginClonePage(),
      //home: LoginPage(),
      //home: KalkulatorPage(),
      //home: InstagramLoginPage(),
    );
  }
}