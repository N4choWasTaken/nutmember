import 'package:flutter/material.dart';
import 'package:nutmember/responsive/mobile_screen_lazyout.dart';
import 'package:nutmember/responsive/responsive_layout_screen.dart';
import 'package:nutmember/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NutMember',
      theme: ThemeData.light(),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(),webScreenLayout: WebScreenLayout()),
    );
  }
}
