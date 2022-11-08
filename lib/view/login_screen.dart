import 'package:flutter/material.dart';
import 'package:mvvmproject/utils/routess/routes_name.dart';
import 'package:mvvmproject/utils/utils.dart';
import 'package:mvvmproject/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              Utils.flushBarErrorMessange('no internet', context);
              // Utils.toastMessage('no internet connection');
              //Navigator.pushNamed(context, Routesname.home);
            },
            child: Text('click')),
      ),
    );
  }
}
