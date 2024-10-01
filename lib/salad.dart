import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

// void main() {
//   runApp(DevicePreview(builder: (context) => MyApp(),));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: IceCreamScreen(),
//     );
//   }
// }

class IceCreamScreen1 extends StatefulWidget {
  @override
  _IceCreamScreenState createState() => _IceCreamScreenState();
}

class _IceCreamScreenState extends State<IceCreamScreen1> {
  String _selectedCategory = 'Ice Cream';

  final Map<String, List<Map<String, String>>> _iceCreamData = {
    'Ice Cream': [
      {
        'name': 'Vanilla Ice Cream',
        'price': '₹100',
        'image': 'https://th.bing.com/th/id/OIP.TpvwqZWSqsPtiu-ps9zccwHaLH?w=186&h=279&c=7&r=0&o=5&dpr=1.7&pid=1.7',
        'details': 'Creamy Delight • Classic • ₹100 for one',
        'offer': '10% OFF up to ₹10',
        'rating': '4.8'
      },
      {
        'name': 'Chocolate Ice Cream',
        'price': '₹120',
        'image': 'https://th.bing.com/th/id/OIP.hoypG8GiUTuyPNHPrMBHZAHaKX?w=186&h=260&c=7&r=0&o=5&dpr=1.7&pid=1.7',
        'details': 'Rich Chocolate • Classic • ₹120 for one',
        'offer': '15% OFF up to ₹18',
        'rating': '4.9'
      },
      {
        'name': 'Strawberry Ice Cream',
        'price': '₹110',
        'image': 'https://th.bing.com/th/id/OIP.yY1QY15dTiq3OpQj6zXaPAHaLG?w=186&h=279&c=7&r=0&o=5&dpr=1.7&pid=1.7',
        'details': 'Fruity Delight • Classic • ₹110 for one',
        'offer': '12% OFF up to ₹13',
        'rating': '4.7'
      },
    ],
    'Gelato': [
      {
        'name': 'Pistachio Gelato',
        'price': '₹150',
        'image': 'https://example.com/pistachio_gelato.jpg',
        'details': 'Nutty Treat • Italian • ₹150 for one',
        'offer': '20% OFF up to ₹30',
        'rating': '4.8'
      },
      {
        'name': 'Mango Gelato',
        'price': '₹140',
        'image': 'https://example.com/mango_gelato.jpg',
        'details': 'Tropical Flavor • Italian • ₹140 for one',
        'offer': '18% OFF up to ₹25',
        'rating': '4.7'
      },
      {
        'name': 'Hazelnut Gelato',
        'price': '₹160',
        'image': 'https://example.com/hazelnut_gelato.jpg',
        'details': 'Nutty & Creamy • Italian • ₹160 for one',
        'offer': '22% OFF up to ₹35',
        'rating': '4.9'
      },
    ],
    'Sorbet': [
      {
        'name': 'Lemon Sorbet',
        'price': '₹90',
        'image': 'https://example.com/lemon_sorbet.jpg',
        'details': 'Refreshing Citrus • Light • ₹90 for one',
        'offer': '10% OFF up to ₹9',
        'rating': '4.6'
      },
      {
        'name': 'Raspberry Sorbet',
        'price': '₹95',
        'image': 'https://example.com/raspberry_sorbet.jpg',
        'details': 'Berry Burst • Light • ₹95 for one',
        'offer': '12% OFF up to ₹11',
        'rating': '4.7'
      },
      {
        'name': 'Mango Sorbet',
        'price': '₹100',
        'image': 'https://example.com/mango_sorbet.jpg',
        'details': 'Tropical Refreshment • Light • ₹100 for one',
        'offer': '15% OFF up to ₹15',
        'rating': '4.8'
      },
    ],
    'Frozen Yogurt': [
      {
        'name': 'Vanilla Frozen Yogurt',
        'price': '₹110',
        'image': 'https://example.com/vanilla_frozen_yogurt.jpg',
        'details': 'Creamy & Light • Healthy • ₹110 for one',
        'offer': '12% OFF up to ₹13',
        'rating': '4.7'
      },
      {
        'name': 'Berry Frozen Yogurt',
        'price': '₹120',
        'image': 'https://example.com/berry_frozen_yogurt.jpg',
        'details': 'Berry Medley • Healthy • ₹120 for one',
        'offer': '15% OFF up to ₹18',
        'rating': '4.8'
      },
      {
        'name': 'Chocolate Frozen Yogurt',
        'price': '₹130',
        'image': 'https://example.com/chocolate_frozen_yogurt.jpg',
        'details': 'Rich & Creamy • Healthy • ₹130 for one',
        'offer': '20% OFF up to ₹26',
        'rating': '4.9'
      },
    ],
  };

  List<Map<String, String>> get _currentIceCreams =>
      _iceCreamData[_selectedCategory] ?? [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Ice Cream Menu'),
        backgroundColor: Colors.pink[800],
      ),
      body: Column(
        children: [
          Container(
            height: 60.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCategoryChip('Ice Cream'),
                _buildCategoryChip('Gelato'),
                _buildCategoryChip('Sorbet'),
                _buildCategoryChip('Frozen Yogurt'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _currentIceCreams.length,
              itemBuilder: (context, index) {
                return _buildIceCreamCard(_currentIceCreams[index]);
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

  Widget _buildIceCreamCard(Map<String, String> iceCream) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                IceCreamDetailScreen(iceCream: iceCream),
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
                iceCream['image']!,
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
                    iceCream['name']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    iceCream['details']!,
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
                        iceCream['price']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        iceCream['rating']!,
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    iceCream['offer']!,
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

class IceCreamDetailScreen extends StatelessWidget {
  final Map<String, String> iceCream;

  IceCreamDetailScreen({required this.iceCream});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(iceCream['name']!),
        backgroundColor: Colors.pink[800],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                iceCream['image']!,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              iceCream['name']!,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              iceCream['details']!,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Price: ${iceCream['price']}',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Rating: ${iceCream['rating']}',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Offer: ${iceCream['offer']}',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
