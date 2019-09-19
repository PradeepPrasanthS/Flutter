import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

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

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager Widget] build');
    return Column(
      children: [
        Container(margin: EdgeInsets.all(10), child: ProductControl(_addProduct)),
        Products(products: _products)
      ],
    );
  }
}
