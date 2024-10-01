import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:device_preview/device_preview.dart';

// void main() {
//   runApp(DevicePreview(builder: (context) => MyApp()));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: PaymentOptionsScreen(),
//       builder: DevicePreview.appBuilder,
//     );
//   }
// }

class PaymentOptionsScreen extends StatelessWidget {
  final List<PaymentOption> paymentOptions = [
    PaymentOption(
      name: 'PhonePe',
      imageUrl: 'https://th.bing.com/th/id/OIP.g96NXCfHKUpoExFUTw80TwHaIf?w=186&h=213&c=7&r=0&o=5&dpr=1.7&pid=1.7', // Add the respective image in the assets folder
      url: 'https://www.phonepe.com/',
    ),
    PaymentOption(
      name: 'Google Pay',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUkmJppezLENkmpeJ5Ldh8x1Ez5J_MIf_qww&s', // Add the respective image in the assets folder
      url: 'https://pay.google.com/',
    ),
    PaymentOption(
      name: 'Paytm',
      imageUrl: 'https://th.bing.com/th/id/OIP.RjtdOk7XPdDmG8L1HbB5QAHaHa?w=186&h=186&c=7&r=0&o=5&dpr=1.7&pid=1.7', // Add the respective image in the assets folder
      url: 'https://paytm.com/',
    ),
    // Add more payment options here
  ];

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
        title: Text('Payment Options'),
      ),
      body: ListView.builder(
        itemCount: paymentOptions.length,
        itemBuilder: (context, index) {
          final option = paymentOptions[index];
          return Container(
            height: 80, // Increase the height of the list item here
            child: ListTile(
              leading: Image.network(
                option.imageUrl,
                width: 40,
                height: 40,
                
              ),
              title: Text(
                option.name,
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () => _launchUrl1(option.url),
            ),
          );
        },
      ),
    );
  }

//  Future <void> _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
Future<void> _launchUrl1(String url) async {
    await launchUrl(Uri.parse(url));
  }
}

class PaymentOption {
  final String name;
  final String imageUrl;
  final String url;

  PaymentOption({required this.name, required this.imageUrl, required this.url});
}
