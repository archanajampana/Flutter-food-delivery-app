import 'package:flutter/material.dart';
import 'package:iship/main.dart';
import 'package:device_preview/device_preview.dart';
void main(){
   runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: deal(),);
  }
}
class deal extends StatefulWidget {
  const deal({super.key});

  @override
  State<deal> createState() => _dealState();
}

class _dealState extends State<deal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar: AppBar(  flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient:
            LinearGradient(
              colors: [Color(0xFFFFDAB9), Color.fromARGB(255, 231, 128, 65)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
        ),title: Text('Deals'),),
        body: Stack(
          children: [
            Positioned(
              top: 30,
              left: 40,
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                   gradient:
            LinearGradient(
              colors: [ Color.fromARGB(255, 231, 128, 65),Color(0xFFFFDAB9)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          
                  borderRadius: BorderRadius.circular(7)),
              ),
            ),
            Positioned(
              top: 30,
              left: 220,
              child: Container(
                height: 50,
                width:80,
                decoration: BoxDecoration( color: Colors.white,
             
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7),bottomRight: Radius.circular(7))
                        ),
                        child: Image.network('https://th.bing.com/th/id/OIP.tgD8ji0CO15ys3xaKLqCTgHaHa?w=186&h=186&c=7&r=0&o=5&dpr=1.7&pid=1.7',),
                        ),
            ),
            
          ],
        ),
    )
    );
  }
}