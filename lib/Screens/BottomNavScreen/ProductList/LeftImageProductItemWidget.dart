import 'package:flutter/material.dart';
import 'package:myshop/Models/products.dart';

import 'BlueButton.dart';

class LeftImageProductItemWidget extends StatelessWidget {
  final screenHeight;
  final Product product;
  const LeftImageProductItemWidget(
      {Key? key, required this.screenHeight, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.only(left: 32),
        height: screenHeight * 0.25,
        color: product.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Hero(
                tag: product.name,
                child: Image.asset(product.imagePath),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      product.description,
                      style: TextStyle(fontSize: 8, color: Color(0xFF909090)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BlueButton(
                      product: product,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
