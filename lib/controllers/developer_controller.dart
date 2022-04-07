import 'package:flutter_getx_example/models/Developer.dart';
import 'package:get/get.dart';

class DeveloperController extends GetxController {
  var developer = Developer();
  void changeName() {
    developer.firstName.value = "Ahmet";
    developer.lastName.value = "Bedevi";
  }
}
