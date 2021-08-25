import 'package:flutter/material.dart';
import 'package:myshop/Models/products.dart';

import 'VerticalProductItem.dart';

class TwoProductItemWidget extends StatelessWidget {
  final screenHeight;
  final Product product1, product2;
  const TwoProductItemWidget(
      {Key? key,
      required this.screenHeight,
      required this.product1,
      required this.product2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.25,
      child: Row(
        children: <Widget>[
          Expanded(
            child: VerticalProductItemWidget(
              screenHeight: screenHeight,
              product: product1,
            ),
          ),
          Expanded(
            child: VerticalProductItemWidget(
              screenHeight: screenHeight,
              product: product2,
            ),
          ),
        ],
      ),
    );
  }
}
