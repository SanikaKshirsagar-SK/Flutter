class CardModel {
  String? date;
  String? amount;
  String? category;
  String? description;
  String? logo;

  CardModel(
      {
      required this.logo,
      required this.date,
      required this.amount,
      required this.category,
      required this.description});
}

class CategoryModel {
  String? imgURL;
  String? categoryName;

  CategoryModel({required this.imgURL, required this.categoryName});
}
