import 'package:flutter/material.dart';
import 'package:globaltech_app/Screens/login/mobile/login_screen.dart';
import 'package:globaltech_app/Screens/login/tablet/login_tablet_screen.dart';
import 'package:globaltech_app/Screens/login/web/login_screen_web.dart';
import 'package:globaltech_app/wigdets/responsive/responsive_wigdet.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
        mobile: LoginScreen(),
        tablet: LoginTabletScreen(),
        web: LoginScreenWeb());
  }
}
