import 'package:flutter/material.dart';

class RealView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text("Nos réalisations",
              style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 25
              )
          ),
          myPadd(),
          const Divider(),
          Row(
            children: [
              Text("Piscines"),
              Spacer()
            ],
          ),
          piscines(size: size),
          myPadd(),
          const Divider(),
          Row(
            children: [
              Text("Jardins"),
              Spacer()
            ],
          ),
          jardins()
        ],
      ),
    );
  }

  Widget jardins() {
    return Container(
      height: 135,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              height: 125,
              width: 125,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/jardin ${index + 1}.jpeg', fit: BoxFit.cover,),
              ),
            );
          }
      ),
    );
  }

  Widget piscines({required Size size}) {
    return Container(
      width: size.width,
      height: size.height * 0.5,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: size.height * 0.25,
              child: Image.asset(
                'images/piscine ${index + 1}.jpeg',
                fit: BoxFit.fill,
              ),
            );
          },
          separatorBuilder: ((context, index)=> Divider()),
          itemCount: 5),
    );
  }

  Padding myPadd() => const Padding(padding: EdgeInsets.only(top: 18));

}