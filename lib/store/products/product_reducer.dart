import 'package:flutter_application_1/store/products/product_action.dart';
import 'package:flutter_application_1/store/products/product_state.dart';

ProductState productReducer(ProductState prevState, dynamic action) {
  ProductState newState = ProductState.fromProductState(prevState);

  if (action is AssignSelectedProduct) {
    newState.selected = action.productName;
  }

  return newState;
}
