import 'package:flutter/material.dart';
class CartScreen extends StatefulWidget {
  String? imge;
  String? names;
 CartScreen({required this.imge,required this.names,super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount:1 ,
        itemBuilder: (context,index){
          return ListTile(
            leading: Image.network(widget.imge!),
            title: Text(widget.names!),
          );
          
      }),
      );
  }
}


// class CartScreen extends StatefulWidget {
//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your Cart'),
//         backgroundColor: Colors.orange,
//       ),
//       body: Center(
//         child: Text('Items in your cart will be shown here.'),
//       ),
//     );
//   }
// }