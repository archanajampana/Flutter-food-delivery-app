import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:iship/cart.dart';
import 'package:iship/firstPage1.dart';
import 'package:iship/pay.dart';

// import 'cart.dart';

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
 Map<String, List<Map<String, String>>> restdata = {
    'Biryani': [
      {
        'name': 'Chicken 65 Biryani',
        'price': '₹350',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrcv5MYfzKwVljhmNg6SezmBbwZhO_JR96gQ&s',
        'details': 'Mahas Kitchen • North Indian • Chinese • ₹300 for one',
        'offer': '60% OFF up to ₹120',
        'rating': '4.2',
         'time':'25 min'
      },
      {
        'name': 'Hyderabadi Biryani',
        'price': '₹450',
        'image': 'https://th.bing.com/th?id=OIP._Djx7LqmormdOaDMNA9hIQHaLH&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Biryani House • Mughlai • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.6',
        'time':'25 min'
      },
     
    ],
    'Chicken': [
      {
        'name': 'Chicken Biryani Deluxe',
        'price': '₹400',
        'image': 'https://th.bing.com/th?id=OIP.M5P3yI6QSzcItNnqOMVz4gHaLG&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5',
        'time':'25 min'
      },
      
     
    ],
    'Dum': [
      {
        'name': 'Dum Biryani',
        'price': '₹400',
        'image': 'https://th.bing.com/th?id=OIP.p37ara1eLUpg7AR0WD9FGgHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5',
        'time':'25 min'
      },
      
      {
        'name': 'Veg Dum Biryani',
        'price': '₹320',
        'image': 'https://th.bing.com/th?id=OIP.XV4dnbT4-0I2fvyRVidf_wHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Veggie Treat • North Indian • ₹300 for one',
        'offer': '40% OFF up to ₹120',
        'rating': '4.2',
        'time':'25 min'
      },
    ],
    'Veg': [
      {
        'name': 'Veg Biryani',
        'price': '₹400',
        'image': 'https://www.bing.com/th?id=OIP.09w0S6udb6sRvC1qeh3gdQHaE0&w=146&h=120&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5',
        'time':'25 min'
      },
     
      {
        'name': 'Mushroom Veg Biryani',
        'price': '₹370',
        'image': 'https://www.bing.com/th?id=OIP.W1YESAJki5esrmpGdgp9IAHaHa&w=146&h=146&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Green Leaf • Indian • ₹310 for one',
        'offer': '50% OFF up to ₹140',
        'rating': '4.4',
        'time':'25 min'
      },
    ],
    'Mutton': [
      {
        'name': 'Mutton Biryani',
        'price': '₹400',
        'image': 'https://th.bing.com/th?id=OIP.TJ0FcxEJCjoJ4E60UYs8LAHaFS&w=295&h=211&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5',
        'time':'25 min'
      },
    
    ],
    'Paneer': [
      {
        'name': 'Paneer Biryani',
        'price': '₹400',
        'image': 'https://www.bing.com/th?id=OIP.384IRfujlnkCmFLhWFr-fAHaLE&w=146&h=218&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5',
        'time':'25 min'
      },
      
    
    ],
  };

class BiryaniScreen extends StatefulWidget {
  @override
  _BiryaniScreenState createState() => _BiryaniScreenState();
}

class _BiryaniScreenState extends State<BiryaniScreen> {
   

  
  String _selectedCategory = 'Biryani';

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
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyClass1(name: ''))
          );
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text('Biryani Menu'),
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
                children: restdata.keys.map((category) {
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
                itemCount: restdata[_selectedCategory]!.length,
                itemBuilder: (context, index) {
                  final restaurant = restdata[_selectedCategory]![index];
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
                        builder: (context) => CartScreen(imge: widget.restaurant['image']!,names:widget.restaurant['name']!),
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

