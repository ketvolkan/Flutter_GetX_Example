import 'package:flutter/material.dart';
import 'package:flutter_getx_example/controllers/locale_controller.dart';
import 'package:get/get.dart';

class ButtonExamplePage extends StatelessWidget {
  ButtonExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Button Örnek".tr),
            Text("${Get.arguments}".tr),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.snackbar(
                  "Alarm",
                  "Saat 9'15 de alarm çalacak!",
                  icon: const Icon(Icons.alarm),
                );
              },
              child: const Text("SnackBar"),
            ),
            TextButton(
              onPressed: () {
                Get.defaultDialog(
                    content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Left Row"),
                            Text("Right Row"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Left Row"),
                            Text("Middle Row"),
                            Text("Right Row"),
                          ],
                        ),
                      ],
                    ),
                    title: "Örnek",
                    cancel: TextButton(
                      child: const Text("Kapat"),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    confirm: TextButton(
                      child: const Text("Onayla"),
                      onPressed: () {},
                    ));
              },
              child: const Text("Show Dialog"),
            ),
            TextButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Theme.of(context).backgroundColor,
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: const Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            }),
                        ListTile(
                          leading: const Icon(Icons.wb_sunny),
                          title: const Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: const Text("Bottom Sheet"),
            ),
            TextButton(
              onPressed: () {
                Get.back(result: "GetX Felfena");
              },
              child: Text('anasayfayagit'.tr),
            ),
            TextButton(
              onPressed: () {
                Get.find<LocaleController>().changeLanguage("en", "US");
              },
              child: Text('Dili İngilizce Yap'.tr),
            ),
            TextButton(
              onPressed: () {
                Get.find<LocaleController>().changeLanguage("tr", "TR");
              },
              child: Text('Dili Türkçe Yap'.tr),
            ),
            Text("${Get.parameters['dil']} ${Get.parameters['bilgi']}"),
          ],
        ),
      ),
    );
  }
}
