import 'package:expense_app/controller/service/splash_Controller.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashController.splashController(context);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              "assets/images/accounting.png",
              height: 150,
              width: 150,
            ),
          ),
          Text(
            "For Expense",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
