import 'package:flutter/material.dart';

class LoginLeftCustomWidget extends StatelessWidget {
  const LoginLeftCustomWidget({
    super.key, required this.title,
    required this.stitle,
    required this.image,
    required this.imageLogo,
    required this.ptitle
  });

  final String image;
  final String imageLogo;
  final String title;
  final String stitle;
  final String ptitle;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * 0.4,

      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
            // Ajoute un filtre noir transparent (opacité à 40%) par-dessus l'image
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              bottomRight: Radius.circular(35)
          )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.16,
              child: Image.asset(imageLogo),
            ),
            Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            Container(
                height: size.height * 0.14,
                width: size.width,
                margin: EdgeInsets.only(left: 25,right: 25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(5)
                    )
                ),
                child: Center(child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(stitle,style: TextStyle(color: Colors.blue,fontSize: 12),),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(ptitle,style: TextStyle(color: Colors.red,fontSize: 12),),

                      ],
                    ))))
          ],
        ),
      ),
    );
  }
}


