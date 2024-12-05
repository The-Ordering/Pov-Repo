import 'package:flutter/material.dart';
import 'package:ordering/home_screen.dart';
import 'package:ordering/view/widget/label.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:  const AppBarTheme(
          backgroundColor: AppColor.dark,
          titleTextStyle: TextStyle(
            color: AppColor.light,
            fontFamily: Onest.semibold,
            fontSize: 20,
          ),
          elevation: 10,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
