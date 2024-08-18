class ProductModel {
  bool? isFavorite = false;
  String? productName;
  String? productImageURL;
  String? productPrice;
  int? quantity = 0;

  ProductModel(
      {this.isFavorite,
      this.productName,
      this.productImageURL,
      this.productPrice,
      this.quantity});
}
