class ProductModel {
  String? productName;
  String? productImageURL;
  String? productPrice;
  bool isFavorite=false;
  int quantity=0;

  ProductModel(
    {
      this.productName,
      this.productImageURL,
      this.productPrice,
      this.isFavorite=false,
      this.quantity=0
    }
  );
}
