import 'package:flutter/material.dart';
import 'package:login_page/provider/my_provider.dart';
import 'package:login_page/register.dart';

import 'login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => MyProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const LoginScreen(),
      routes: {
        'login': (ctx) => const LoginScreen(),
        'register': (ctx) => const RegisterScreen(),
      },
    );
  }
}
