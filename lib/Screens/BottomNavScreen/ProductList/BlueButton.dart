import 'package:flutter/material.dart';
import 'package:myshop/Models/products.dart';
import 'package:myshop/Screens/BottomNavScreen/ProductDetail/ProductDetailScreen.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              product: product,
            ),
          ),
        );
      },
      child: Text(
        product.buttonText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 10,
        ),
      ),
      color: Color(0xFF00000FF),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(15),
      )),
    );
  }
}
