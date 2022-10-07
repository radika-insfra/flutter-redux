import 'package:flutter_application_1/store/application_state.dart';
import 'package:flutter_application_1/store/products/product_reducer.dart';

ApplicationState rootReducer(ApplicationState state, action) {
  return ApplicationState(
    productState: productReducer(state.productState, action),
  );
}
