import 'package:flutter/material.dart';
import 'package:w6/shopping.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: myBTN(context),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return formShopping();
                },
              ),
            ),
            child: const Text("Go to Shopping"),
            style: OutlinedButton.styleFrom(
              fixedSize: Size(300, 80),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Text Button"),
            style: OutlinedButton.styleFrom(
              fixedSize: Size(300, 80),
            ),
          ),
        ],
      ),
    );
  }

  Center myBTN(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Let's Shopping"),
                Icon(Icons.add_shopping_cart_outlined),
              ],
            ),

            onPressed: () => showDialog<String>(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Alert Dialog Title'),
                content: const Text('Alert Dialog Description'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            //child: const Text('Elevated Button'),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 80), // Size of the button
                textStyle: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold), // Text styling
                backgroundColor: Colors.yellow, // Background color
                foregroundColor: Colors.black,
                elevation: 15,
                shadowColor: Colors.red,
                side: BorderSide(color: Colors.black38, width: 2),
                shape: StadiumBorder() // Text color
                ),
          ),
        ],
      ),
    );
  }
}
