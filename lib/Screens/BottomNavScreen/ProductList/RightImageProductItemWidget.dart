import 'package:flutter/material.dart';
import 'package:myshop/Models/products.dart';
import 'package:myshop/Screens/BottomNavScreen/ProductDetail/ProductDetailScreen.dart';
import 'BlueButton.dart';

class RightImageProductItemWidget extends StatelessWidget {
  final screenHeight;
  final Product product;
  const RightImageProductItemWidget(
      {Key? key, required this.screenHeight, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 32),
      height: screenHeight * 0.3,
      color: product.backgroundColor,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.description,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 10),
                // ignore: deprecated_member_use
                BlueButton(product: product),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Positioned(
                  bottom: -50,
                  top: 50,
                  child: Transform.rotate(
                      angle: -0.3,
                      child: Image.asset(
                        product.imagePath,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
