import 'package:get/get.dart';
import 'package:project_flutter/pages/confirmreg_page.dart';
import 'package:project_flutter/pages/kalkulator_page_stl.dart';
import 'package:project_flutter/pages/registration_page.dart';
import 'package:project_flutter/pages/login_page.dart';
import 'package:project_flutter/pages/list_makanan_page.dart';
import 'package:project_flutter/pages/detail_makanan_page.dart';
import 'package:project_flutter/pages/main_menu_page.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmreg = '/confirmreg';
  static const String kalkulatorstl = '/kalkulatorstl';
  static const String login = '/login';
  static const String listmakanan = '/listmakanan';
  static const String detailmakanan = '/detailmakanan';
  static const String mainmenu = '/mainmenupage';

  static final myPages = [
    GetPage(name: registration,   page: () => const RegistrationPage()),
    GetPage(name: confirmreg,     page: () => ConfirmregPage()),
    GetPage(name: kalkulatorstl,  page: () => KalkulatorPageStl()),
    GetPage(name: login,          page: () => const LoginPage()),
    GetPage(name: listmakanan,    page: () => ListMakananPage()),
    GetPage(name: detailmakanan,  page: () => DetailMakananPage()),
    GetPage(name: mainmenu,       page: () => MainMenuPage()),
  ];
}