import 'package:flutter/material.dart';


class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const Responsive({super.key,
    required this.mobile,
    required this.tablet,
    required this.web
  });


  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;

    if (size.width >= 1024) {
      return web;
    }

    if (size.width >= 600) {
      return tablet;
    }

    return mobile;
  }
}