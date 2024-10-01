import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:iship/profile.dart';
import 'package:iship/firstPage1.dart';
bool fnl = false;
class MyForm extends StatelessWidget {
  MyForm({super.key});
  @override
  void _show(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(content: Text('Successfully Updated',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
      actions: [TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('OK',style: TextStyle(color: Colors.orange),))],
      );
    });

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient:
            LinearGradient(
              colors: [Color(0xFFFFDAB9), Color.fromARGB(255, 231, 128, 65)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )


       

          ),
        ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Profile(name: a[0])));},
            child: Icon(Icons.arrow_back)),
          title: Text("Profile"),
         
        ),
        body: Form(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Name",
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Mobile Number",
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Date of Birth",
                      ),
                    ),
                    SizedBox(height: 50,),
                    ElevatedButton(onPressed: (){
                      fnl = true;
                      _show((context));
                    },
                      child: Text("Update Profile",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      style:
                      ElevatedButton.styleFrom(
                        fixedSize: Size(600, 50),
                        backgroundColor: Colors.orange,
                      ),
                    )
                  ],
                ),
              ),
            )
        ),
      ),
    );

  }
}