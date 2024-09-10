// invoice.dart
class Invoice {
  // Data required:
  double itemPrice;
  double quantity;
  double taxPercent = 19;

  // Data not required (but nice to have):
  // String articleWhich;
  // String articleWhere;

  Invoice(
      {required this.itemPrice,
      required this.quantity,
      required this.taxPercent});
}
