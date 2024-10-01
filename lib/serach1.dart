import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main(){
   runApp(DevicePreview(builder: (context) => MyApp(),));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: login(),);
  }
}
class login extends StatelessWidget {
   login({super.key});
    int x=0;
  int flag=0;
  final pagecontroler = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: 
      // PageView(
      //   onPageChanged: (int i){
      //     x=i;
      //   },
      //   controller: pagecontroler,
      //   scrollDirection: Axis.horizontal,

        // children: [
          Column(
            children: [
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(height: 150,),
                    Container(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(onPressed: (){}, child: Text('Signatured'),style: ElevatedButton.styleFrom( fixedSize: Size.fromWidth(100), // Set the width and height
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),),
              ),
                    
                    ),
                    Container(
                      height: 50,
                      width: 200,
                            child: ElevatedButton(onPressed: (){
                              // Navigator.push(context, route)
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>signatured()));
                            }, child: Text('Iced Coffee'),style: ElevatedButton.styleFrom( fixedSize: Size.fromWidth(100), // Set the width and height
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),),),
                          ),
                            Container(
                      height: 50,
                      width: 200,
                            child: ElevatedButton(onPressed: (){
                              
                            }, child: Text('Hot Coffee'),style: ElevatedButton.styleFrom( fixedSize: Size.fromWidth(200), // Set the width and height
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),),),
                
                          ),
                            Container(
                      height: 50,
                      width: 200,
                            child: ElevatedButton(onPressed: (){}, child: Text('Chocolate'),style: ElevatedButton.styleFrom( fixedSize: Size.fromWidth(200), // Set the width and height
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),),),
                
                          ),
                  ],
                ),
              ),
            ],
          ),
             
        // ],


      // ),

    ));
  }
}
class signatured extends StatelessWidget {
  const signatured({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: GridView(gridDelegate: ),
    ));
  }
}