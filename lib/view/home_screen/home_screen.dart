import 'dart:math';


import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final Random _random = Random(); 
  int _randomNumber = 0; 
   String image1 = "assets/images/button.png";
  

  @override
  Widget build(BuildContext context) {
    if(
      _randomNumber == 1
    ){
      image1 = "assets/images/d1.jpg";
    }else if(_randomNumber == 2){
      image1 = "assets/images/d2.png";
    }else if(_randomNumber == 3){
      image1 = "assets/images/d3.png";
    }else if(_randomNumber == 4){
      image1 = "assets/images/d4.png";
    }else if(_randomNumber == 5 ){
      image1 = "assets/images/d5.png";
    }else if(_randomNumber == 6 ){
      image1 = "assets/images/d6.png";
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
           InkWell(
            onTap: () {
              setState(() {
                 _randomNumber = 
          1 + _random.nextInt(6);
              });
            },
            child: Container(
              height: 200,
              width: 200,
               child: Image.asset(
               image1
              ,fit: BoxFit.cover,
        )
            )),
            Column(
              children: [
                Text("$_randomNumber"),
              ],
            )
          ],
        ),
      ),
    );
  }
}