import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:globaltech_app/Screens/home/home_screen.dart';

void main() {
  //init firebase
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const MyApp());
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
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Banner(
          message: "Fuel",
          location: BannerLocation.topEnd,
        child: const HomeScreen(),
      ),
    );
  }
}
