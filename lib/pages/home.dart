import 'package:flutter/material.dart';
import 'package:flutter_getx_example/controllers/counter_controller.dart';
import 'package:flutter_getx_example/controllers/developer_controller.dart';
import 'package:flutter_getx_example/controllers/locale_controller.dart';

import 'package:flutter_getx_example/models/Student.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var underText = "".obs;

  var student = Student(name: "Merve", age: 22).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                // var gelenVeri = await Get.to(ButtonExamplePage(),
                //     transition: Transition.zoom, arguments: "GetX Süper");
                var gelenVeri = await Get.toNamed("/ButtonExample/woow?dil=Tr",
                    arguments: "GetX Süper");
                underText.value = gelenVeri;
              },
              child: const Text("Go To Button Example"),
            ),
            Obx(() => Text(underText.value)),
            const Divider(),
            //OBX Kullanımı
            Obx(() => Text(
                "First Name : ${Get.find<DeveloperController>().developer.firstName.value}")),
            //GetX Kullanımı
            GetX<DeveloperController>(
                init: DeveloperController(),
                builder: (controller) {
                  return Text(
                      " Last Name : ${controller.developer.lastName.value}");
                }),
            TextButton(
              onPressed: () {
                Get.find<DeveloperController>().changeName();
              },
              child: const Text("Geliştiriciyi Değiştir"),
            ),
            const Divider(),
            Obx(() => Text(
                "Name : ${student.value.name} Age : ${student.value.age}")),
            TextButton(
              onPressed: () {
                student.update((student) {
                  student!.name = student.name.toString().toUpperCase();
                  student.age = 21;
                });
              },
              child: const Text("Öğrenciyi Değiştir"),
            ),
            const Divider(),
            GetX<CounterController>(
              init: CounterController(),
              builder: (controller) {
                return Text("${controller.count} kez tıklandı!");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.find<CounterController>().increment();
        },
      ),
    );
  }
}
