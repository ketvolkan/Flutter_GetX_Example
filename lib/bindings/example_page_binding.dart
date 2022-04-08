import 'package:flutter_getx_example/controllers/locale_controller.dart';
import 'package:get/get.dart';

class ExamplePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocaleController>(() => LocaleController());
  }
}
