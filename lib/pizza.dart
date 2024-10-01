import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:iship/firstPage1.dart';
import 'package:iship/pay.dart';

// void main() {
//   runApp(DevicePreview(builder: (context) => MyApp(),));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: BiryaniScreen(),
//     );
//   }
// }

class BiryaniScreen5 extends StatefulWidget {
  @override
  _BiryaniScreenState createState() => _BiryaniScreenState();
}

class _BiryaniScreenState extends State<BiryaniScreen5> {
  String _selectedCategory = 'Veg Pizza';

  final Map<String, List<Map<String, String>>> _restaurantData = {
    'Veg Pizza': [
      {
        'name': 'Chicken 65 Biryani',
        'price': '₹350',
        'image': 'https://th.bing.com/th/id/OIP.ysSoYEkFYz0GU5TnS0v2hAHaLH?w=186&h=279&c=7&r=0&o=5&dpr=1.7&pid=1.7',
        'details': 'Mahas Kitchen • North Indian • Chinese • ₹300 for one',
        'offer': '60% OFF up to ₹120',
        'rating': '4.2',
         'time':'25 min'
      },
      {
        'name': 'Margherita Pizza',
        'price': '₹450',
        'image': 'https://th.bing.com/th/id/OIP.GUorPFR28nJaXqFMnjdFNAHaEK?w=186&h=104&c=7&r=0&o=5&dpr=1.7&pid=1.7',
        'details': 'Biryani House • Mughlai • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.6',
         'time':'25 min'
      },
     
    ],
    'Non-veg Pizza': [
      {
        'name': 'Chicken pizza',
        'price': '₹400',
        'image': 'https://th.bing.com/th/id/OIP.vZ5V3jUS_QVZ470X9f5bhQHaEp?w=186&h=117&c=7&r=0&o=5&dpr=1.7&pid=1.7',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5',
         'time':'25 min'
      },
     
    ],
     
  };

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
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text('Pizzas Menu'),
        ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _restaurantData.keys.map((category) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = category;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: _selectedCategory == category
                            ? Colors.orange
                            : Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        category,
                        style: TextStyle(
                          color: _selectedCategory == category
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _restaurantData[_selectedCategory]!.length,
                itemBuilder: (context, index) {
                  final restaurant = _restaurantData[_selectedCategory]![index];
                  return _buildRestaurantCard(restaurant);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRestaurantCard(Map<String, String> restaurant) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RestaurantDetailScreen(restaurant: restaurant)),
        );
      },
      child: Card(
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.network(
                restaurant['image']!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200.0,
              ),
              SizedBox(height: 10.0),
              Text(
                restaurant['name']!,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                restaurant['details']!,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                restaurant['offer']!,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    restaurant['price']!,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16.0),
                      SizedBox(width: 5.0),
                      Text(
                        restaurant['rating']!,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                      'Estimated Delivery: ${ restaurant['time']!}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class RestaurantDetailScreen extends StatefulWidget {
  final Map<String, String> restaurant;

  RestaurantDetailScreen({required this.restaurant});

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
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
        title: Text(widget.restaurant['name']!),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.restaurant['image']!,
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              widget.restaurant['details']!,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Price: ${widget.restaurant['price']!}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Rating: ${widget.restaurant['rating']!}',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
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
            SizedBox(height: 16.0),
            Text(
              'Offer: ${widget.restaurant['offer']!}',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(150, 40),backgroundColor: Colors.orange),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentOptionsScreen(),
                      ),
                      
                    );
                  },
                  child: Text('Buy Now',style: TextStyle(color: Colors.white),),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Colors.orange[800],
                  // ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(150, 40),backgroundColor: Colors.orange),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ),
                    );
                  },
                  child: Text('Add to Cart',style: TextStyle(color: Colors.white),),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Colors.orange[800],
                  // ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class PaymentPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Payment')),
//       body: Center(child: Text('Payment Page')),
//     );
//   }
// }
class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('Items in your cart will be shown here.'),
      ),
    );
  }
}
