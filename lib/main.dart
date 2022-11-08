import 'package:flutter/material.dart';
import 'package:suitmedia_intern/common/style/color_theme.dart';
import 'package:suitmedia_intern/utils/routes.dart';
import 'common/style/style.dart';
import 'utils/text_string.dart';

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
      title: 'SuiteMedia Test',
      theme: ThemeData(
        primarySwatch: generateMaterialColor(bluePrimaryColor),
        textTheme: myTextTheme,
      ),
      routes: routes,
      initialRoute: TextString.firstPage,
    );
  }
}
