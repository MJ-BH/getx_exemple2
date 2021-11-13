import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPageView();
  }
}

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page '),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.greenAccent,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: false,
                  obscuringCharacter: "*",
                  controller: emailcontroller,
                  enabled: true,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 36,
            padding: EdgeInsets.symmetric(horizontal: 56),
            child: ElevatedButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.orange)),
              ),
              onPressed: () {
                GetUtils.isEmail(emailcontroller.text)
                    ? Get.snackbar('Email Correct'.tr, 'Bon Email Format'.tr,
                        backgroundColor: Colors.green[900],
                        snackPosition: SnackPosition.BOTTOM)
                    : Get.snackbar(
                        'Email incorrect'.tr, 'Mauvais Email Format'.tr,
                        backgroundColor: Colors.red[800],
                        snackPosition: SnackPosition.TOP);
              },
              child: Text('valide'.tr),
            ),
          ),
        ],
      ),
    );
  }
}
