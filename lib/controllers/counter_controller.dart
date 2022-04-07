import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
    // Get builder kullanırken
    //update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
