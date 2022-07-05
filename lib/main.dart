import 'package:flutter/material.dart';
import 'package:github_search/ui/User.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: const TextTheme()),
      debugShowCheckedModeBanner: false,
      home: User(),
    );
  }
}
