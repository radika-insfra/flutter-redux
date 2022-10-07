import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/product_card.dart';
import 'package:flutter_application_1/components/title_component.dart';
import 'package:flutter_application_1/models/api/product_model.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<Product> productList = [];

  void fetchData() async {
    Response response;
    try {
      response =
          await Dio().get("https://cdn.radikadilanka.com:9000/getProducts");

      if (response.statusCode == 200) {
        ProductResponse productResponse =
            ProductResponse.fromJson({"data": response.data});
        setState(() {
          productList = productResponse.productList;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void didChangeDependencies() {
    fetchData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TitleComponent()),
      body: ListView.builder(
        itemBuilder: (BuildContext context, index) => ProductCard(
            productName: productList[index].productName,
            description: productList[index].description,
            image: productList[index].images[0]),
        itemCount: productList.length,
      ),
    );
  }
}
