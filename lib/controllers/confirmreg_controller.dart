import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  late String nama;
  late String email;
  late String nowa;
  late String alamat;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    email = arguments['email'];
    nowa = arguments['nowa'];
    alamat = arguments['alamat'];
  }
}