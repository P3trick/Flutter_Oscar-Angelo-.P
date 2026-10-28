import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:project_flutter/menu/history.dart';
import 'package:project_flutter/menu/home.dart';
import 'package:project_flutter/menu/profile.dart';

class MenuDrawerController extends GetxController {

  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
    Get.back();
  }


  List<Widget> listPages = [
    Home(),
    History(),
    Profile(),
  ];

}