import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/widgets.dart';
import 'package:iship/favorites.dart';
import 'package:iship/firstPage1.dart';
import 'package:iship/main.dart';
import 'package:iship/pay.dart';
import 'package:iship/Cart_final.dart';

List<bool> li=[
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,

];
List<bool>cart = [
  false,false,false,false,false,false,false,false,
  false,
  false,false,false,false,false,
];

class HomeScreen extends StatefulWidget {
  HomeScreen({required this.name,super.key});
  String name = ' ';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> _items = [
    {
      'name': 'Milk Shake',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWodMhMFGlN0yFbJAfJ9ai_RDMHQabCYSitw&s',
      'price': '200',
      'rating': '4.8',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
    {
      'name': 'Cake',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKi63vUBgYjvrmkcpMBECjMxIIIkaQR5OLvA&s',
      'price': '200',
      'rating': '4.5',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'30 min'

    },
    {
      'name': 'waffle',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQyy5MjDB0YN82FZ6O177_2jN_2CXA-_M-RQ&s',
      'price': '200',
      'rating': '4.2',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'40 min'
    },
    {
      'name': 'Icecream',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7n-r1qsHIwVmPh6dkUO57vFg5ekUlNsubyQ&s',
      'price': '200',
      'rating': '4.0',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'15 min'
    },
    {
      'name': 'Cupcake',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN9Rkklc4Be_MkMFdZoodHFSVSshleWi2yFQ&s',
      'price': '200',
      'rating': '4.1',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'10 min'
    },
    {
      'name': 'Shawarma',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmMFvE1YBGYC39PsJuHv4W0Q4qyYE-aG68_g&s',
      'price': '200',
      'rating': '3.8',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
    {
      'name': 'Pizza',
      'image': 'https://static.vecteezy.com/system/resources/previews/025/010/292/large_2x/pizza-tomato-copy-cheese-food-fast-background-meal-black-space-italian-closeup-food-generative-ai-photo.jpg',
      'price': '200',
      'rating': '4.5',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
    {
      'name': 'Burger',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSe2Rx-y1hT16WnYkqqPBYsQnQ_v91WTpaYg&s',
      'price': '200',
      'rating': '4.0',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
    {
      'name': 'Sushi',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgszLBVa-mnI2uQZmh8JkjaJxQX2qYgV2Cow&s',
      'price': '200',
      'rating': '3.8',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
    {
      'name': 'Pasta',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHl9ey7423__uaAtwWzAIX3cC3ZnTTW1gf4A&s',
      'price': '200',
      'rating': '4.2',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
    {
      'name': 'Salad',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl-6673zg5WFcJ7WuDsMuZ1IRLsO9xSOwEAg&s',
      'price': '200',
      'rating': '3.5',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
    {
      'name': 'French fries',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTedlwcMtg6q95pdawXytV7UMbs8WF5Bn4ZeQ&s',
      'price': '200',
      'rating': '3.2',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
    {
      'name': 'Sandwich',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG4B31ASBOOaUOhecb8yRzdBdAnq2K05ba2g&s',
      'price': '200',
      'rating': '3.5',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
    {
      'name': 'Soup',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOpUB5_RewYUEy2jLphEANfB0dl05kBFbWfg&s',
      'price': '200',
      'rating': '4.0',
      'decs': 'Its a popular treat, often enjoyed \n as a dessert or refreshing drink, and\n can be customized',
      'time':'20 min'
    },
  ];

  List<Map<String, String>> _filteredItems = [];
  bool a = false;
  // IconData b = Icons.favorite_border;
  // IconData c=Icons.shopping_cart;

  @override
  void initState() {
    super.initState();
    _filteredItems = _items;
    a = true;
  }

  void _filterItems(String query) {
    setState(() {
      _filteredItems = _items
          .where((item) => item['name']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyClass1(name: '')));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Text('Food Delivery App'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: _filterItems,
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.60,
              ),
              itemCount: _filteredItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SingleImage(item: _filteredItems[index])));
                  },
                  child: GridTile(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue,
                              offset: Offset(0.3, 0.3),
                              blurRadius: 1.5)
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Align(
                            // child:-
                             Row(
                              children: [
                                  IconButton(
                                color: Colors.orange,
                                icon: Icon(
                                  cart[index]
                                      ? Icons.shopping_cart
                                      : Icons.shopping_cart_outlined,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if(cart[index] == true){
                                      w.remove(_filteredItems[index]['name']!);
                                      q.remove(_filteredItems[index]['image']!);
                                    }
                                    else {
                                      w.add(_filteredItems[index]['name']!);
                                      q.add(_filteredItems[index]['image']!);
                                    }
                                    cart[index] = !cart[index];
                                  });
                                },
                              ),
                                Spacer(),
                                Text(
                                  _filteredItems[index]['price']!,
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            // alignment: Alignment.topRight,
                          // ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: ClipRect(
                                child: Image.network(
                                  _filteredItems[index]['image']!,
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            _filteredItems[index]['name']!,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              // SizedBox(
                              //   width: 20,
                              //   height: 65,
                              // ),
                              IconButton(
                                color: Colors.orange,
                                icon: Icon(
                                  li[index]
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if(li[index] == true){
                                      nme.remove(_filteredItems[index]['name']!);
                                      img.remove(_filteredItems[index]['image']!);
                                    }
                                    else {
                                      nme.add(_filteredItems[index]['name']!);
                                      img.add(_filteredItems[index]['image']!);
                                    }
                                    li[index] = !li[index];
                                  });
                                },
                              ),
                              // SizedBox(
                              //   width: 70,
                              // ),
                              Spacer(),
                              Text(
                                _filteredItems[index]['rating']!,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: 400,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SingleImage extends StatefulWidget {
  final Map<String, String> item;

  SingleImage({required this.item});

  @override
  _SingleImageState createState() => _SingleImageState();
}

class _SingleImageState extends State<SingleImage> {
  int _quantity = 0;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var scrsize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.item['name']!),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: ClipRect(
                    child: Image.network(
                      widget.item['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                widget.item['name']!,
                style: TextStyle(fontSize: 24),
              ),
              Container(
                height: 150,
                width: 400,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  widget.item['decs']!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: _decrementQuantity,
                    child: Icon(Icons.remove),
                    mini: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      _quantity.toString(),
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: _incrementQuantity,
                    child: Icon(Icons.add),
                    mini: true,
                  ),
                ],
              ),

              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time, size: 30, color: Colors.black),
                    SizedBox(width: 10),
                    Text(
                      'Estimated Delivery: ${ widget.item['time']!}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentOptionsScreen(),));},
                    child: Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size((scrsize/2) - 20 , 60),
                      backgroundColor: Colors.orange,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add to cart',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size((scrsize/2) - 20, 60),
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}