import 'package:flutter/material.dart';
import 'package:iship/Cart_final.dart';
import 'package:iship/Form.dart';
import 'package:iship/coffee.dart';
import 'package:iship/favorites.dart';
import 'package:iship/login_signup.dart';


class Profile extends StatefulWidget {
  Profile({required this.name,super.key});
  String name;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  double? h;
  double? w;
  List menu = [
    ProfileMenu(icons: Icons.shopping_cart, txt: "My Cart"),
    ProfileMenu(icons: Icons.mail, txt: "Contact Us"),
    ProfileMenu(icons: Icons.logout_outlined, txt: "Log out"),
  ];
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(0,1.5),blurRadius: 2),],color: Colors.white),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 60,width: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 255, 208, 137)),
                              child: Center(child: Text(widget.name[0]!,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 23),)),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Text(widget.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                Text("View Activity",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.normal),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration( color: Colors.black,borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.all(10),
                          height: 60,
                          width: double.infinity,
                         
                          child: Row(
                            children: [
                                  Icon(Icons.delivery_dining_outlined,color: Colors.white,),
                                  SizedBox(width: 20,),
                                  Text("Join Quick Bite Gold",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:  (){Navigator.push(context, MaterialPageRoute(builder: (context) => favo()));},
                        child: Container(
                          padding: EdgeInsets.all(20),
        
                          width: (w!/2) - 25,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(color: Colors.grey,offset: Offset(0, 1.5),blurRadius: 1.5),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Icon(Icons.favorite_border_outlined),
                                SizedBox(height: 10,),
                                Text("Favourite",style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          )
                        ),
                      ),
        
                      Container(
                          padding: EdgeInsets.all(20),
                          width: (w!/2) - 25,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(color: Colors.grey,offset: Offset(0, 1.5),blurRadius: 1.5),
                          ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Icon(Icons.currency_rupee),
                                SizedBox(height: 10,),
                                Text("Money",style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey,offset: Offset(0, 1.5),blurRadius: 1.5),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    height: 60,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.person,color: Colors.orange,),
                        Text("Your Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                        fnl ? Text("100% completed",style : TextStyle(color: Colors.orange)) :
                        Text("32% completed",style: TextStyle(color: Colors.orange),),
                        IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyForm()));
                            }
                            ,icon: Icon(Icons.arrow_forward_ios,size: 18,)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    // height: 200,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey,offset: Offset(0, 1.5),blurRadius: 1.5),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    width: double.infinity,
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.shopping_cart,color: Colors.orange,),
                                    // Spacer(),
                                     SizedBox(width: 20,),
                                    Text("My Cart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => CartFinal()));
                                    },
                                        child: Icon(Icons.arrow_forward_ios,size: 16,)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.mail,color: Colors.orange,),
                                    // Spacer(),
                                     SizedBox(width: 20,),
                                    Text("Contact Us",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios,size: 16,),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.logout_outlined,color: Colors.orange,),
                                    // Spacer(),
                                    SizedBox(width: 20,),
                                    Text("Log Out",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                        },
                                        child: Icon(Icons.arrow_forward_ios,size: 16,)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMenu{
    final IconData icons;
    final String txt;
    ProfileMenu({
      required this.icons,
      required this.txt,
});
}