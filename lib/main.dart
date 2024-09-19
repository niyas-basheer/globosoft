import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globosoft/view/prodect_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MansharCart Products',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProductView(),
    );
  }
}
