import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
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

class BiryaniScreen extends StatefulWidget {
  @override
  _BiryaniScreenState createState() => _BiryaniScreenState();
}

class _BiryaniScreenState extends State<BiryaniScreen> {
  String _selectedCategory = 'Biryani';

  final Map<String, List<Map<String, String>>> _restaurantData = {
    'Biryani': [
      {
        'name': 'Chicken 65 Biryani',
        'price': '₹350',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrcv5MYfzKwVljhmNg6SezmBbwZhO_JR96gQ&s',
        'details': 'Mahas Kitchen • North Indian • Chinese • ₹300 for one',
        'offer': '60% OFF up to ₹120',
        'rating': '4.2'
      },
      {
        'name': 'Hyderabadi Biryani',
        'price': '₹450',
        'image': 'https://th.bing.com/th?id=OIP._Djx7LqmormdOaDMNA9hIQHaLH&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Biryani House • Mughlai • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.6'
      },
      {
        'name': 'Paneer Biryani',
        'price': '₹300',
        'image': 'https://www.bing.com/th?id=OIP.384IRfujlnkCmFLhWFr-fAHaLE&w=146&h=218&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Veggie Delight • North Indian • ₹250 for one',
        'offer': '40% OFF up to ₹100',
        'rating': '4.1'
      },
    ],
    'Chicken': [
      {
        'name': 'Chicken Biryani Deluxe',
        'price': '₹400',
        'image': 'https://th.bing.com/th?id=OIP.M5P3yI6QSzcItNnqOMVz4gHaLG&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5'
      },
      {
        'name': 'Spicy Chicken Biryani',
        'price': '₹420',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHYZC8DssuF24pWkJM52H8caJSBhBlCiG6OQ&s',
        'details': 'Spice Hub • Indian • ₹380 for one',
        'offer': '55% OFF up to ₹130',
        'rating': '4.3'
      },
      {
        'name': 'Chicken Tikka Biryani',
        'price': '₹430',
        'image': 'https://th.bing.com/th?id=OSK.fef04078db0af2434c3924c19c69d5ad&w=164&h=219&rs=2&qlt=80&o=6&cdv=1&dpr=1.7&pid=16.1',
        'details': 'BBQ Nation • BBQ • ₹400 for one',
        'offer': '60% OFF up to ₹140',
        'rating': '4.7'
      },
    ],
    'Dum': [
      {
        'name': 'Dum Biryani',
        'price': '₹400',
        'image': 'https://th.bing.com/th?id=OIP.p37ara1eLUpg7AR0WD9FGgHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5'
      },
      {
        'name': 'Mutton Dum Biryani',
        'price': '₹480',
        'image': 'https://www.bing.com/th?id=OIP.cJ47_OVh1HDlaqmYEqIq8wHaE6&w=146&h=120&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Mughal Treat • Mughlai • ₹400 for one',
        'offer': '55% OFF up to ₹160',
        'rating': '4.6'
      },
      {
        'name': 'Veg Dum Biryani',
        'price': '₹320',
        'image': 'https://th.bing.com/th?id=OIP.XV4dnbT4-0I2fvyRVidf_wHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Veggie Treat • North Indian • ₹300 for one',
        'offer': '40% OFF up to ₹120',
        'rating': '4.2'
      },
    ],
    'Veg': [
      {
        'name': 'Veg Biryani',
        'price': '₹400',
        'image': 'https://www.bing.com/th?id=OIP.09w0S6udb6sRvC1qeh3gdQHaE0&w=146&h=120&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5'
      },
      {
        'name': 'Paneer Veg Biryani',
        'price': '₹380',
        'image': 'https://th.bing.com/th?id=OSK.ef2980e9983beba203f559704be6bad6&w=164&h=246&rs=2&qlt=80&o=6&cdv=1&dpr=1.7&pid=16.1',
        'details': 'Veggie Delight • North Indian • ₹330 for one',
        'offer': '45% OFF up to ₹130',
        'rating': '4.3'
      },
      {
        'name': 'Mushroom Veg Biryani',
        'price': '₹370',
        'image': 'https://www.bing.com/th?id=OIP.W1YESAJki5esrmpGdgp9IAHaHa&w=146&h=146&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Green Leaf • Indian • ₹310 for one',
        'offer': '50% OFF up to ₹140',
        'rating': '4.4'
      },
    ],
    'Mutton': [
      {
        'name': 'Mutton Biryani',
        'price': '₹400',
        'image': 'https://th.bing.com/th?id=OIP.TJ0FcxEJCjoJ4E60UYs8LAHaFS&w=295&h=211&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'Tandoori Palace • North Indian • ₹350 for one',
        'offer': '50% OFF up to ₹150',
        'rating': '4.5'
      },
      {
        'name': 'Spicy Mutton Biryani',
        'price': '₹450',
        'image': 'https://th.bing.com/th/id/OIP.yz8Do3yCVoZEBn52KiHH6QHaLH?w=204&h=306&c=7&r=0&o=5&dpr=1.7&pid=1.7',
        'details': 'Spice Hub • Indian • ₹400 for one',
        'offer': '55% OFF up to ₹130',
        'rating': '4.6'
      },
      {
        'name': 'Mutton Biryani Special',
        'price': '₹480',
        'image': 'https://th.bing.com/th?id=OIP.c1i0nQjb6p9SnaZJNUQMuAHaHc&w=288&h=288&c=8&rs=1&qlt=90&o=6&dpr=1.7&pid=3.1&rm=2',
        'details': 'BBQ Nation • BBQ • ₹450 for one',
        'offer': '60% OFF up to ₹140',
        'rating': '4.7'
      },
    ],
  };

  List<Map<String, String>> get _currentRestaurants =>
      _restaurantData[_selectedCategory] ?? [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Biryani Menu'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 60.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCategoryChip('Biryani'),
                _buildCategoryChip('Chicken'),
                _buildCategoryChip('Dum'),
                _buildCategoryChip('Veg'),
                _buildCategoryChip('Mutton'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _currentRestaurants.length,
              itemBuilder: (context, index) {
                return _buildRestaurantCard(_currentRestaurants[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String category) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ChoiceChip(
        label: Text(category),
        selected: _selectedCategory == category,
        onSelected: (selected) {
          setState(() {
            _selectedCategory = category;
          });
        },
      ),
    );
  }

  Widget _buildRestaurantCard(Map<String, String> restaurant) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantDetailScreen(restaurant: restaurant),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                restaurant['image']!,
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant['name']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    restaurant['details']!,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        restaurant['price']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        restaurant['rating']!,
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    restaurant['offer']!,
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RestaurantDetailScreen extends StatelessWidget {
  final Map<String, String> restaurant;

  RestaurantDetailScreen({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant['name']!),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                restaurant['image']!,
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              restaurant['details']!,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Price: ${restaurant['price']!}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Rating: ${restaurant['rating']!}',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Offer: ${restaurant['offer']!}',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(150, 40),backgroundColor: Colors.blue),
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
                  style: ElevatedButton.styleFrom(fixedSize: Size(150, 40),backgroundColor: Colors.blue),
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

// class PaymentOptionsScreen extends StatelessWidget {
//   @override
//   final List<PaymentOption> paymentOptions = [
//     PaymentOption(
//       name: 'PhonePe',
//       imageUrl: 'assets/phonepe.png', // Add the respective image in the assets folder
//       url: 'https://www.phonepe.com/',
//     ),
//     PaymentOption(
//       name: 'Google Pay',
//       imageUrl: 'assets/googlepay.png', // Add the respective image in the assets folder
//       url: 'https://pay.google.com/',
//     ),
//     PaymentOption(
//       name: 'Paytm',
//       imageUrl: 'assets/paytm.png', // Add the respective image in the assets folder
//       url: 'https://paytm.com/',
//     ),
//     // Add more payment options here
//   ];

//   Widget build(BuildContext context) {
//     return 
//   }
// }

class OnlinePaymentOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Payment Options'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Select your online payment method.'),
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Items in your cart will be shown here.'),
      ),
    );
  }
}
