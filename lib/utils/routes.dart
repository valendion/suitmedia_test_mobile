import 'package:flutter/cupertino.dart';
import 'package:suitmedia_intern/ui/first_page.dart';
import 'package:suitmedia_intern/ui/second_page.dart';
import 'package:suitmedia_intern/utils/text_string.dart';

import '../ui/third_page.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  TextString.firstPage: (context) => const FirstPage(),
  TextString.secondPage: (context) => const SecondPage(),
  TextString.thirdPage: (context) => const ThirdPage(),
};
