import 'package:flutter/material.dart';
import 'package:nutmember/responsive/mobile_screen_lazyout.dart';
import 'package:nutmember/responsive/responsive_layout_screen.dart';
import 'package:nutmember/responsive/web_screen_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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
