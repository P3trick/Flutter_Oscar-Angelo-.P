import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/controllers/menu_drawer_controller.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final menuDrawerController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
        ),
        body: IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.listPages,
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.blue[100],
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      'NAVIGATION',
                      style: TextStyle(fontSize: 35),
                    ),
                  )
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: TextStyle(fontSize: 20),
                  ),
                  selected: menuDrawerController.selectedIndex.value == 0,
                  onTap: () => menuDrawerController.changePage(0),
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text(
                    'History',
                    style: TextStyle(fontSize: 20),
                  ),
                  selected: menuDrawerController.selectedIndex.value == 1,
                  onTap: () => menuDrawerController.changePage(1),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'Profile',
                    style: TextStyle(fontSize: 20),
                  ),
                  selected: menuDrawerController.selectedIndex.value == 2,
                  onTap: () => menuDrawerController.changePage(2),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}