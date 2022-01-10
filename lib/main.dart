import 'package:clipping_path/views/pages/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ClippingPath());
}

class ClippingPath extends StatelessWidget {
  const ClippingPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => OnBoardingPage()),
      ],
    );
  }
}
