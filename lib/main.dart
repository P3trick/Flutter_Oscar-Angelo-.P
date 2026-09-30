import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project_flutter/pages/kalkulator_page.dart';
import 'package:project_flutter/pages/login_page.dart';
import 'package:project_flutter/pages/login_clone_page.dart';
import 'package:project_flutter/pages/kalkulator_page_stl.dart';
import 'package:project_flutter/pages/registration_page.dart';
import 'package:project_flutter/pages/confirmreg_page.dart';
import 'package:project_flutter/routes.dart';
import 'package:project_flutter/pages/registration_page.dart';
import 'package:project_flutter/pages/confirmreg_page.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Learning App',
      initialRoute: 'routes.registration',
      getPages: routes.myPages,
    );
  }
}