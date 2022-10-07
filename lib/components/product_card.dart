import 'package:flutter/material.dart';
import 'package:flutter_application_1/store/application_state.dart';
import 'package:flutter_application_1/store/products/product_action.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    required this.productName,
    required this.description,
    required this.image,
  }) : super(key: key);

  final String productName;
  final String description;
  final String image;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        StoreProvider.of<ApplicationState>(context)
            .dispatch(AssignSelectedProduct(productName: widget.productName));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.productName),
              SizedBox(
                width: 100,
                child: Text(
                  widget.description,
                  maxLines: 2,
                ),
              )
            ],
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
              widget.image,
            ),
          )
        ],
      ),
    );
  }
}
