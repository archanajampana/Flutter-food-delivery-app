import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:iship/firstPage1.dart';
// void main(){
//   runApp(DevicePreview(builder: (context) => myApp()));

// }
// class myApp extends StatelessWidget {
//   const myApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Login(),debugShowCheckedModeBanner: false,);
//   }
// }
class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin{
  final _controller = TextEditingController();
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("Please enter email or username."),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children:[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/loginx.jpg"),fit: BoxFit.fill,
                // colorFilter: ColorFilter.mode(   Colors.blue, BlendMode.difference),
              ),
            ),
          ),
          // Scaffold
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 150,),
                  Container(
                    padding: EdgeInsets.symmetric(),
                    height: 150,
                    child: Center(
                      child: Text(
                        "Quick Byte",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 35,color: Colors.orange),
                      ),
                    ),
                  ),
                  SizedBox(height: 60,),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding:EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 11),
                                border: InputBorder.none,
                                hintText: "Enter Email or Username",
                                hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.mail_rounded,color: Colors.white,size: 30,),
                                )
                            ),
                          ),
                        ),
                        Container(
                          padding:EdgeInsets.all(8),
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.symmetric(vertical: 11),
                               
                                border: InputBorder.none,
                                hintText: "Enter Password",
                                hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                                suffixIcon: Icon(Icons.visibility),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.lock,color: Colors.white,size: 30,),
                                ),
                                
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          child: Align(
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
                            ),
                            alignment: Alignment.topRight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80,),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(8),
                      fixedSize: Size(380,50),
                      backgroundColor:  Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),),
                    onPressed: (){
                      if (_controller.text.isEmpty) {
                        _showAlertDialog(context);
                      }
                      else {
                        a.add(_controller.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyClass1(name: _controller.text)));
                      }
                    }, child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}