import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iship/Cart_final.dart';
import 'package:iship/biryani.dart';
import 'package:iship/coffee.dart';
import 'package:iship/deals.dart';
import 'package:iship/desserts.dart';
import 'package:iship/dosa.dart';
import 'package:iship/favorites.dart';
import 'package:iship/fish.dart';
import 'package:iship/gpt_grid.dart';
import 'package:iship/icecream.dart';
import 'package:iship/juice.dart';
import 'package:iship/paneer.dart';
import 'package:iship/pizza.dart';
import 'package:iship/profile.dart';

// import 'package:iship/salad.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
List a = [];
class MyClass1 extends StatefulWidget {
  MyClass1({required this.name,super.key});
  String name;
  @override
  State<MyClass1> createState() => _MyClass1State();
}

class _MyClass1State extends State<MyClass1> with SingleTickerProviderStateMixin{
  int currPage = 0;
  late TabController tc;
  String pfl='';
  int i=0;
  int tabIndex = 0;
  List tabItems = [];
  final pc = PageController();

  final li = [

    Container(width:330,height: 220,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: const Color.fromARGB(255, 255, 208, 137),offset: Offset(0, 1.5),blurRadius: 2)],
        // color: Colors.red,
        borderRadius: BorderRadius.circular(10),        

      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(10),child: ClipRect(child: Image.network("https://th.bing.com/th/id/OIP.nBWr7Mwc5qoXs7XUt1u35AHaHa?w=186&h=186&c=7&r=0&o=5&dpr=1.7&pid=1.7",fit: BoxFit.fill,))),

    ),
    Container(width: 330,height: 220,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: const Color.fromARGB(255, 255, 208, 137),offset: Offset(0, 3),blurRadius: 2)],
        // color: Colors.blue,
        borderRadius: BorderRadius.circular(10),

      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(10),child: ClipRect(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzhAflkVDIK-jh33MovarwdoAYJVorjwlcvg&s",fit: BoxFit.cover,))),

    ),
    Container(width: 330,height: 220,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: const Color.fromARGB(255, 255, 208, 137),offset: Offset(0, 1.5),blurRadius: 2)],
          borderRadius: BorderRadius.circular(10)
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(10),child: ClipRect(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfpCSvPxIbfqgq1KNpFPpcjNEIeHVYaXxVfg&s",fit: BoxFit.fill,))),
    ),
    Container(width: 330,height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: const Color.fromARGB(255, 255, 208, 137),offset: Offset(0, 3),blurRadius: 2)],
      ),
      child: ClipRRect(borderRadius:BorderRadius.circular(10),child: ClipRect(child: Image.network("https://th.bing.com/th/id/OIP.C3Ep0grJrP7VQASs-3ocnwHaFY?w=186&h=135&c=7&r=0&o=5&dpr=1.7&pid=1.7",fit: BoxFit.fill,))),
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    tc = TabController(length: 5, vsync: this);
    super.initState();
    pfl=widget.name.isNotEmpty? widget.name: ' ';
  }
  @override


  Widget build(BuildContext context) {

    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Hello ",style: TextStyle(fontSize: 17,color: Colors.grey),),
                      Text(a[0],style: TextStyle(color:Colors.grey,fontSize: 17),),
                      Text(",",style: TextStyle(color:Colors.grey,fontSize: 20),),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(name: a[0])));
                        },
                        child: Container(
                          height: 40,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 255, 208, 137)),
                          child: Center(child: Text(a[0][0],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 23),)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Align(child: Text("Choose Your Best Meal!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),alignment: Alignment.topLeft,),
                  SizedBox(height: 10,),
                  CarouselSlider(items: li,
                    options: CarouselOptions(
                        autoPlay: true,
                        height: 200,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayInterval: Duration(seconds: 2),
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (ind,j){
                          setState(() {
                            currPage = ind;
                          });
                        }
                    ),
                  ),
                  SizedBox(height: 40,),
                  AnimatedSmoothIndicator(activeIndex: currPage, count: li.length,
                    effect: WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 10,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.orange,
                      // paintStyle: PaintingStyle.fill,
                    ),
                  ),

                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("WHAT'S ON YOUR MIND?",style: TextStyle(fontSize: 15,letterSpacing: 2,fontWeight: FontWeight.bold),),
                      GestureDetector(
                          onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(name: widget.name)));},
                          child: Text('View All',style: TextStyle(color: Colors.orange,fontSize: 16),))
                      // ElevatedButton(onPressed: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodDeliveryApp()));
                      // }, child: Text('View all'))
                    ],
                  ),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        SizedBox(width: 10,),
                        Container(
                          width: 85,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 2)],color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(width: 70,height: 70,
                                child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>BiryaniScreen()));
                                    }
                                    ,child: Image.asset("assets/biryani.jpg",fit: BoxFit.cover,)),
                              ),
                              Text("Biryani")
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 85,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 2)],color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(width: 70,height: 70,
                                child: GestureDetector(
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BiryaniScreen1()));},
                                    child: Image.asset("assets/fish.jpg",fit: BoxFit.cover,)),
                              ),
                              Text("Fish")
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 85,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 2)],color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(width: 70,height: 70,
                                child: GestureDetector(
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BiryaniScreen2()));},
                                    child: Image.asset("assets/dosa.jpg",fit: BoxFit.cover,)),
                              ),
                              Text("Dosa"),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 85,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 2)],color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(width: 70,height: 70,
                                child: GestureDetector(
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BiryaniScreen3()));},
                                    child: Image.asset("assets/coffee.jpg",fit: BoxFit.cover,)),
                              ),
                              Text("Hot Coffee"),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 85,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 2)],color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(width: 70,height: 70,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BiryaniScreen4()));
                                    },
                                    child: Image.asset("assets/juice.jpg",fit: BoxFit.cover,)),
                              ),
                              Text("Juice"),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 85,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 2)],color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(width: 70,height: 70,
                                child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BiryaniScreen5()));
                                    },
                                    child: Container(child: Image.network("https://th.bing.com/th/id/OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8?w=186&h=124&c=7&r=0&o=5&dpr=1.7&pid=1.7",width: 50,height: 50,))),
                              ),
                              Text("Pizza"),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 85,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 2)],color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(width: 70,height: 70,
                                child: GestureDetector(
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BiryaniScreen6()));},
                                    child: Image.network("https://th.bing.com/th/id/OIP.3vj_-9HMbdZ8upGhy0oBeQHaLH?w=186&h=341&c=7&r=0&o=5&dpr=1.7&pid=1.7",fit: BoxFit.cover,width: 40,height: 40,)),
                              ),
                              Text("Desserts"),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),

                        Container(
                          width: 85,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 2)],color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(width: 70,height: 70,
                                child: GestureDetector(
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BiryaniScreen7()));},
                                    child: Image.asset("assets/paneer.jpg",width: 50,height: 50,fit: BoxFit.cover,)),
                              ),
                              Text("Paneer"),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 85,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 2)],color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(width: 70,height: 70,
                                child: GestureDetector(
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>BiryaniScreen8()));},
                                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7n-r1qsHIwVmPh6dkUO57vFg5ekUlNsubyQ&s',fit: BoxFit.cover,)),
                              ),
                              Text("Icecream"),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height : 15),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 1.5)],borderRadius: BorderRadius.circular(15),color: Color(0xffFDF5EA)),
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Text("Best in North Indian - Restaurant Awards 2024",),
                            Container(
                              height: 250,
                              child: PageView(
                                // physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                // reverse: true,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(color: Colors.cyanAccent,borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))),
                                      child:ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),child: ClipRect(child: Image.network("https://th.bing.com/th/id/OIP.A6s9CiP7llLK0_xNgY2SzwHaE7?w=186&h=124&c=7&r=0&o=5&dpr=1.7&pid=1.7",fit: BoxFit.cover,)))
                                  ),
                                  Container(
                                    child:Image.network("https://cdn.pixabay.com/photo/2024/01/18/17/20/ai-generated-8517258_1280.jpg",fit: BoxFit.cover,),
                                    color: Colors.orange,
                                  ),
                                  Container(
                                    child:Image.network("https://cdn.pixabay.com/photo/2014/12/16/23/45/soup-570922_640.jpg",fit: BoxFit.cover,),
                                    color: Colors.pink,
                                  ),
                                  Container(
                                    child: Image.network("https://cdn.pixabay.com/photo/2020/10/30/18/35/bruschetta-5699486_960_720.jpg",fit: BoxFit.cover,),
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,child: Container(color: Colors.white,),),
                            Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Text("Dakshin Haveli",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                                  Spacer(),
                                  ElevatedButton(style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                    backgroundColor: Colors.orange,
                                  ), onPressed: (){

                                  }, child: Text("4.4 *",style: TextStyle(color: Colors.white,fontSize: 20),))
                                ],
                              ),
                            ),
                            Container(color: Colors.white,child: Align(child: Text("North Indian - Chinese - \$350 for one",style: TextStyle(color: Colors.grey),),alignment: Alignment.topLeft,)),
                            // SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 1.5)],borderRadius: BorderRadius.circular(15),color: Color(0xffFDF5EA)),
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Text("Best in North Indian - Restaurant Awards 2024",),
                            Container(
                              height: 250,
                              child: PageView(
                                // physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                // reverse: true,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(color: Colors.cyanAccent,borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))),
                                      child:ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),child: ClipRect(child: Image.network("https://cdn.pixabay.com/photo/2024/01/18/17/20/ai-generated-8517258_1280.jpg",fit: BoxFit.cover,)))
                                  ),
                                  Container(
                                    child:Image.network("https://cdn.pixabay.com/photo/2020/10/30/18/35/bruschetta-5699486_960_720.jpg",fit: BoxFit.cover,),
                                    color: Colors.orange,
                                  ),
                                  Container(
                                    child:Image.network("https://cdn.pixabay.com/photo/2014/12/16/23/45/soup-570922_640.jpg",fit: BoxFit.cover,),
                                    color: Colors.pink,
                                  ),
                                  Container(
                                    child: Image.network("https://cdn.pixabay.com/photo/2024/04/13/11/29/muffins-8693748_1280.jpg",fit: BoxFit.cover,),
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,child: Container(color: Colors.white,),),
                            Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Text("Sevenska",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                                  Spacer(),
                                  ElevatedButton(style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                    backgroundColor: Colors.orange,
                                  ), onPressed: (){

                                  }, child: Text("4.4 *",style: TextStyle(color: Colors.white,fontSize: 20),))
                                ],
                              ),
                            ),
                            Container(color: Colors.white,child: Align(child: Text("North Indian - Chinese - \$350 for one",style: TextStyle(color: Colors.grey),),alignment: Alignment.topLeft,)),
                            // SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(1.5,1.5),blurRadius: 1.5)],borderRadius: BorderRadius.circular(15),color: Color(0xffFDF5EA)),
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Text("Best in North Indian - Restaurant Awards 2024",),
                            Container(
                              height: 250,
                              child: PageView(
                                // physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                // reverse: true,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(color: Colors.cyanAccent,borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))),
                                      child:ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),child: ClipRect(child: Image.network("https://cdn.pixabay.com/photo/2024/01/18/17/20/ai-generated-8517258_1280.jpg",fit: BoxFit.cover,)))
                                  ),
                                  Container(
                                    child:Image.network("https://cdn.pixabay.com/photo/2020/10/30/18/35/bruschetta-5699486_960_720.jpg",fit: BoxFit.cover,),
                                    color: Colors.orange,
                                  ),
                                  Container(
                                    child:Image.network("https://cdn.pixabay.com/photo/2014/12/16/23/45/soup-570922_640.jpg",fit: BoxFit.cover,),
                                    color: Colors.pink,
                                  ),
                                  Container(
                                    child: Image.network("https://th.bing.com/th/id/OIP.A6s9CiP7llLK0_xNgY2SzwHaE7?w=186&h=124&c=7&r=0&o=5&dpr=1.7&pid=1.7",fit: BoxFit.cover,),
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,child: Container(color: Colors.white,),),
                            Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Text("Hungry Birds",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                                  Spacer(),
                                  ElevatedButton(style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                    backgroundColor: Colors.orange,
                                  ), onPressed: (){

                                  }, child: Text("4.4 *",style: TextStyle(color: Colors.white,fontSize: 20),))
                                ],
                              ),
                            ),
                            Container(color: Colors.white,child: Align(child: Text("North Indian - Chinese - \$350 for one",style: TextStyle(color: Colors.grey),),alignment: Alignment.topLeft,)),
                            // SizedBox(height: 10,),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orange,
            unselectedItemColor:  Colors.grey,
            currentIndex: tabIndex,
            onTap: (int i){
              setState(() {
                tabIndex = i;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
              BottomNavigationBarItem(icon: 
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartFinal()));
                },
                child: Icon(Icons.shopping_cart,)),label: "My Cart"
              ),
              BottomNavigationBarItem(icon: GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>favo()));},
                  child: Icon(Icons.favorite,)),label: "Favorite"),
                  BottomNavigationBarItem(icon: GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>deal()));},
                    child: Icon(Icons.star_border)),label: "Deals")
            ],
          ),
        ),
      ),
    );
  }
}