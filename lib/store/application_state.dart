import 'package:flutter_application_1/store/products/product_state.dart';

class ApplicationState {
  final ProductState productState;

  ApplicationState({required this.productState});

  factory ApplicationState.inital() {
    return ApplicationState(productState: ProductState.inital());
  }
}
