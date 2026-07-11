import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.2,
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
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Column(
                children: [
                  Text("Connexion", style: GoogleFonts.ubuntu(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                  Text("Entrez vos identifiants pour acceder à votre compte",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w300),textAlign: TextAlign.center,)
                ],
              ),
            ),
            // Textfiled
            SizedBox(
              width: size.width * 0.85,
              child: Column(
                children: [

                  //Email
                  TextfiledCustom(
                    controller: _controller,
                    hintTextName: "Email...",
                  ),
                  const SizedBox(height: 15,),
                  TextfiledCustom(
                    controller: _controller,
                    hintTextName: "Mot de passe",
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class TextfiledCustom extends StatelessWidget {
  const TextfiledCustom({super.key, required this.controller, required this.hintTextName});

  final TextEditingController controller;
  final String hintTextName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          fillColor: Colors.blue,
          hintText: hintTextName,
          suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.clear))
      ),
    );
  }
}

