import 'package:expense_app/view/auth/login_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Demo',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: LoginView(),
    );
  }
}
