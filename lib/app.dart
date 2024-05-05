import 'package:expense_app/view/auth/login_view.dart';
import 'package:expense_app/view/splash/splash_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Demo',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: SplashView(),
    );
  }
}
