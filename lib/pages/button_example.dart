import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonExamplePage extends StatelessWidget {
  const ButtonExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Button Example "),
            Text("${Get.arguments}"),
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
                    color: Colors.white,
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
              child: const Text("Go To Home"),
            ),
            Text("${Get.parameters['dil']} ${Get.parameters['bilgi']}"),
          ],
        ),
      ),
    );
  }
}
