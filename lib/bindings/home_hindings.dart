import 'package:flutter_getx_example/controllers/counter_controller.dart';
import 'package:flutter_getx_example/controllers/developer_controller.dart';
import 'package:flutter_getx_example/controllers/locale_controller.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
    Get.lazyPut<DeveloperController>(() => DeveloperController());
    Get.lazyPut<LocaleController>(() => LocaleController());
  }
}
