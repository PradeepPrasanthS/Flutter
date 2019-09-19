import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'}) {
    print('[ProductManager Widget] constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager Widget] initState()');
    super.initState(); 
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('[ProductManager Widget] didUpdateWidget()');
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager Widget] build');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text('Add Product'),
            onPressed: () {
              setState(() {
                _products.add('Advanced Tool Tester');
              });
            },
          ),
        ),
        Products(products: _products)
      ],
    );
  }
}
