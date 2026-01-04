import 'package:flutter/material.dart';
import 'shopping.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var _productName, _customerName;
  final _productController = TextEditingController();
  final _customerController = TextEditingController();

  void initState() {
    super.initState();
    _productController.addListener(_updateText);
    _customerController.addListener(_updateText);
  }

  void _updateText() {
    setState(() {
      _productName = _productController.text;
      _customerName = _customerController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              controller: _productController,
              /*onChanged: (val) {
                _updateText(val);
              },*/
              decoration: InputDecoration(
                hintText: 'Product Name',
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _customerController,
              decoration: InputDecoration(
                labelText: 'Customer Name',
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            myBTN(context),
            SizedBox(
              height: 30,
            ),
            Text(
              "Product Name is : ${_productController.text}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Customer Name is : ${_customerController.text}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return formShopping(
                  productName: _productController.text,
                  customerName: _customerController.text,
                );
              }));
            },
            /*
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
            */
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
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
