import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'My Favourite Games',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: 1500,
            width: double.infinity,
            color: Colors.blue[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  game_box('Free Fire', 'assets/ff.jpeg'),
                  SizedBox(height: 10),
                  game_box('Call of Duty', 'assets/cod.jpeg'),
                  SizedBox(height: 10),
                  game_box('Clash of Clans', 'assets/coc.jpeg'),
                  SizedBox(height: 10),
                  game_box('Bus Simulator Indonesia', 'assets/bussid.jpeg'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container game_box(gname, gimage) {
    return Container(
      height: 240,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue[300], borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            gname,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 170,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                gimage,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
