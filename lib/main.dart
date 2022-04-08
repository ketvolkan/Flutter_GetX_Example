import 'package:flutter/material.dart';
import 'package:flutter_getx_example/bindings/example_page_binding.dart';
import 'package:flutter_getx_example/bindings/home_hindings.dart';
import 'package:flutter_getx_example/locales.dart';
import 'package:flutter_getx_example/pages/button_example.dart';
import 'package:flutter_getx_example/pages/home.dart';
import 'package:flutter_getx_example/pages/not_found.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX',
      theme: ThemeData.light(),
      initialBinding: HomeBindings(),
      initialRoute: "/",
      translations: Locales(),
      locale: Locale("en", "Us"),
      fallbackLocale: Locale("en", "Us"),
      unknownRoute: GetPage(name: '/notfound', page: () => const NotFound()),
      defaultTransition: Transition.cupertino,
      getPages: [
        GetPage(name: '/', page: () => HomePage(), binding: HomeBindings()),
        GetPage(
            name: '/ButtonExample/:bilgi',
            page: () => ButtonExamplePage(),
            binding: ExamplePageBindings())
      ],
      home: HomePage(),
    );
  }
}
