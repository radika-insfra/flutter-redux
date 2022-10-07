import 'package:flutter/material.dart';
import 'package:flutter_application_1/store/application_state.dart';
import 'package:flutter_application_1/store/products/product_state.dart';
import 'package:flutter_redux/flutter_redux.dart';

class TitleComponent extends StatelessWidget {
  const TitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ApplicationState, ProductState>(
      converter: ((store) => store.state.productState),
      builder: (context, ProductState state) => Text(
        "Shop - ${state.selected}",
      ),
    );
  }
}
