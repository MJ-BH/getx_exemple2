import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_exemple/screens/main_page.dart';
import 'package:getx_exemple/utils/traductions.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    locale: const Locale("ar"),
    initialRoute: '/mainPage',
    translations: MyTranslations(),
    theme: ThemeData(
        secondaryHeaderColor: Colors.teal, primaryColor: Colors.blueAccent),
    darkTheme: ThemeData(
        secondaryHeaderColor: Colors.red, primaryColor: Colors.purple[200]),
    defaultTransition: Transition.downToUp,
    getPages: [GetPage(name: '/mainPage', page: () => MainPage())],
  ));
}
