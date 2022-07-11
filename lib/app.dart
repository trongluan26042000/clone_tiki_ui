import 'package:clone_tiki_ui/screens/home_screen.dart';
import 'package:clone_tiki_ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class TikiApp extends StatelessWidget {
  const TikiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Tiki",
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
