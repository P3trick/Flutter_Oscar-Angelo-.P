import 'package:get/get.dart';
import 'package:project_flutter/pages/confirmreg_page.dart';
import 'package:project_flutter/pages/kalkulator_page_stl.dart';
import 'package:project_flutter/pages/registration_page.dart';
import 'package:project_flutter/pages/login_page.dart';

class routes {
  static const String registration = '/registration';
  static const String confirmreg = '/confirmreg';
  static const String kalkulatorstl = '/kalkulator';
  static const String login = '/login';

  static final myPages=[
    GetPage(name: registration, page: ()=> const RegistrationPage()),
    GetPage(name: confirmreg, page: ()=> const ConfirmregPage()),
    GetPage(name: kalkulatorstl, page: ()=> KalkulatorPageStl()),
    GetPage(name: login, page: ()=> const LoginPage()),
  ];

}