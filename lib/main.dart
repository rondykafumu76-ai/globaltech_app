import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:globaltech_app/Screens/home/home_screen.dart';
import 'package:globaltech_app/Screens/login/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //init firebase
  WidgetsBinding widgetsBinding =  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp( ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Globaltech Team',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()),
      home: Banner(
          message: "Fuel",
          location: BannerLocation.topEnd,
        child: const LoginScreen(),
      ),
    );
  }
}
