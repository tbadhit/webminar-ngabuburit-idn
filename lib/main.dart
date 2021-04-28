import 'package:flutter/material.dart';
import 'package:webminar_flutter_design_to_code_idn/ui/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Design to Code',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
