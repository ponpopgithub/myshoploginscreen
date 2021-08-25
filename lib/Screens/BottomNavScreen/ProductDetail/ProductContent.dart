import 'package:flutter/material.dart';
import 'package:myshop/Models/products.dart';

class ProductContent extends StatelessWidget {
  const ProductContent({
    Key? key,
    required this.product,
    required this.screenHeight,
  }) : super(key: key);

  final Product product;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: product,
            child: Image.asset(
              product.imagePath,
              height: screenHeight * 0.5,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Start from: ",
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "\$${product.price}",
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                product.name + "\t\t\t\t",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                ),
              ),
              Image.asset("assets/images/stadia_logo.png", height: 22),
            ],
          ),
          SizedBox(height: 10),
          Text(
            product.productInfo,
            style: TextStyle(
                color: Color(0xFF909090),
                fontWeight: FontWeight.w300,
                fontSize: 16),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              RaisedButton(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(horizontal: 96.0),
                color: Color(0xFFDA1D21),
                textColor: Colors.white,
                child: Text("Add to cart"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Material(
                  elevation: 4,
                  color: Colors.white,
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.add,
                    size: 35,
                    color: Color(0xFF0000FF),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
