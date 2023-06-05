import 'package:coffee_shop_ui/UI/Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
            opacity: 0.6
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Coffee Shop",
            style: GoogleFonts.pacifico(
              fontSize: 50,
              color: Colors.white
            ),
            ),
            Column(
              children: [
                Text("Feeling Low? Take a Sip of Coffee",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Material(
                  color: const Color(0xFFE57734),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    splashColor: Colors.black,
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> const HomeScreen()
                      )
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE57734),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text("Get Start",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
