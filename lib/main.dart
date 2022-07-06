import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/bloc/profile_bloc.dart';
import 'package:github_search/ui/Repos.dart';
import 'package:github_search/ui/User.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: const TextTheme()),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ProfileBloc(Repos()),
        child: User(),
      ),
    );
  }
}
