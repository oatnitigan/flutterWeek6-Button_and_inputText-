import 'package:flutter/material.dart';

class formShopping extends StatelessWidget {
  //const formShopping({super.key});
  //formShopping({Key? key, required this.productName}) : super(key: key);
  const formShopping(
      {super.key, required this.productName, required this.customerName});
  final String productName, customerName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Screen'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.account_balance_wallet_outlined),
              title: Text(productName),
              subtitle: Text(customerName),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Back')),
            ),
          ],
        ),
      ),
    );
  }
}
