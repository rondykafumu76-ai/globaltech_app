import 'package:flutter/material.dart';

class TextfiledCustom extends StatelessWidget {
  const TextfiledCustom({super.key, required this.controller, required this.hintTextName,required this.icon});

  final TextEditingController controller;
  final String hintTextName;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          fillColor: Colors.blue,
          hintText: hintTextName,
          suffixIcon: IconButton(onPressed: (){
            controller.clear();
          }, icon: icon)
      ),
    );
  }
}