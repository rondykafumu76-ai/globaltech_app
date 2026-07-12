import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Global",style: TextStyle(color: Colors.blue,fontSize: 19,fontWeight: FontWeight.bold),),Text("Tech",style: TextStyle(color: Colors.red,fontSize: 19,fontWeight: FontWeight.bold),)

          ],
        ),
        centerTitle: true,
        actions: [

          IconButton(
            icon: Badge.count(
              count: 99,
              child: const Icon(Icons.notifications),
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: NavBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.24,
              color: Colors.red,
            ),
            
            Text("Aperçu"),

            Container(
              height: size.height * 0.24,
              color: Colors.blue,
            ),

            Text("Mission en cours"),
            Container(
              height: size.height * 0.24,
              color: Colors.blue,
            ),
          ],
        ),
      )
    );



  }
}



class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}

