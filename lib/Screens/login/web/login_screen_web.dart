import 'package:flutter/material.dart';
import 'package:globaltech_app/wigdets/button/material_wigdet_button.dart';

import '../../../wigdets/Textfield/textfiled_custom.dart';
import '../../../wigdets/login/login_wigdet_web.dart';
import '../../home/mobile/home_screen.dart' show HomeScreen;

class LoginScreenWeb extends StatefulWidget {
  const LoginScreenWeb({super.key});

  @override
  State<LoginScreenWeb> createState() => _LoginScreenWebState();
}

class _LoginScreenWebState extends State<LoginScreenWeb> {

  final TextEditingController _mail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          const LoginLeftCustomWidget(
            title: 'GLobaltech',
            stitle: 'Une source fiable pour suivre les opérations à temps réel',
            image: 'assets/login_image/pexel_2.jpg',
            imageLogo: 'assets/logo/logo.png',
            ptitle: "Votre partenaire pour l'excellence",),
          Expanded(
            child:Container(
              height: size.height,
              width: size.width,
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: size.width * 0.3,
                        child: Column(
                          children: [
                            TextfiledCustom(controller: _mail, hintTextName: '', icon: Icon(Icons.mail),),
                            const SizedBox(height: 15,),
                            TextfiledCustom(controller: _mail, hintTextName: '', icon: Icon(Icons.mail),),
                            ButtonWidgetMaterial(onTap: (){}, title: "Bonjour",sizeHeight: ,)
                          ],
                        )),
                  ],

              ),
            ),
          )

        ],
      ));
  }
}

