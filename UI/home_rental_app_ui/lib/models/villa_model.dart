class VillaModel {
  String villaImageURL;
  String villaName;
  String villaShortDescription;
  String villaPrice;
  int bedroomCount;
  int bathroomCount;
  String villaArea;
  String villaLongDescription;

  VillaModel(
      {
        required this.villaImageURL,
        required this.villaName,
        required this.villaShortDescription,
        required this.villaPrice,
        required this.bedroomCount,
        required this.bathroomCount,
        required this.villaArea,
        required this.villaLongDescription
      });
}
