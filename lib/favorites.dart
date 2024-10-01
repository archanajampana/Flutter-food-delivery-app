import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: favo());
//   }
// }

List<String>nme=[];
List<String>img=[];
class favo extends StatefulWidget {
  favo({super.key});
  //  final Map<String, String> item1;
  @override
  State<favo> createState() => _favoState();
}

class _favoState extends State<favo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
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
      title: Text('My favourites'),),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          
          leading: Container(
           
            height: 50,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            // child: Image.network(img[index],height: 50,width: 50,)
             child:ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),child: ClipRect(child: Image.network(img[index],fit: BoxFit.cover,)))
            ) ,
          title:Text(nme[index]),
        );
      } ,itemCount: nme.length,),
    )
    );
  }
}