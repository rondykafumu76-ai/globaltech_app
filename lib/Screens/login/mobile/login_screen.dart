import 'package:flutter/material.dart';
import 'package:globaltech_app/Screens/home/mobile/home_screen.dart';
import 'package:globaltech_app/config/router/app_router_constants.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../wigdets/Textfield/textfiled_custom.dart';
import '../../../wigdets/button/material_wigdet_button.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassWord = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(

        height: size.height * 0.83,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: size.width * 0.4,
                          child: Image.asset(
                              "assets/logo/logo.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                  //En tete
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 25),
                    child: Column(
                      children: [
                        Text("Connexion", style: GoogleFonts.ubuntu(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),),
                        Text("Entrez vos identifiants pour acceder à votre compte",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w300),textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  // Textfiled
                  SizedBox(
                    width: size.width * 0.85,
                    child: Column(
                      children: [

                        //Email
                        TextfiledCustom(
                          controller: _controllerEmail,
                          hintTextName: "Email...",
                          icon: Icon(Icons.clear),
                        ),
                        const SizedBox(height: 15,),
                        TextfiledCustom(
                          controller: _controllerPassWord,
                          hintTextName: "Mot de passe",
                          icon: Icon(Icons.remove_red_eye),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  ButtonWidgetMaterial(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(), // Remplace par le nom de ton widget
                          ),
                        );
                      },
                    title: "Se Conncter",
                    sizeHeight: null, sizeWidget: null,
                  ),

                  //
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Vous n'avez pas de compte?"),
                        TextButton(
                            onPressed: (){},
                             child: Text("Contactez l'administrateur"))
                      ],
                    ),
                  )
                ],
              ),
            ),

            //
            Positioned(
              bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Center(child: Text("Version 0.1",style: TextStyle(fontSize: 10),),)
                ],
                ),
            )
          ],
        ),
      )
    );
  }
}



