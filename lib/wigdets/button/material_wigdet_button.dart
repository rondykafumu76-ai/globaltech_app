import 'package:flutter/material.dart';


class ButtonWidgetMaterial extends StatelessWidget {
  const ButtonWidgetMaterial({super.key, required this.onTap, required this.title,required this.sizeHeight, required this.sizeWidget});

  final VoidCallback onTap;
  final String title;
  final Size sizeWidget;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: onTap,
      child: Container(
        height: sizeWidget.height,
        width: sizeWidget.width,

        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: Center(
            child: Text(title,style: TextStyle(color: Colors.white),
            )
        ),
      ),
    );

  }
}