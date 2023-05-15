import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final bg = 'images/piscine 4.jpeg';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: Image.asset(
                  bg,
                  fit: BoxFit.cover
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 8),
                  child: const Text(
                    "Accueil",
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5
                  ),
                  padding: EdgeInsets.all(25),
                  color: Colors.white.withOpacity(0.75),
                  child: const Center(
                    child:  Text(
                      "Une expertise unique en Provence au service de tous les jardins du monde.\nRapprochons nous de la nature.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            )
          ],
        )
    );


  }
}