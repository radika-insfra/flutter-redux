class ProductState {
  String selected = "";

  ProductState({required this.selected});

  ProductState.fromProductState(ProductState another) {
    selected = another.selected;
  }

  factory ProductState.inital() {
    return ProductState(selected: "");
  }
}
