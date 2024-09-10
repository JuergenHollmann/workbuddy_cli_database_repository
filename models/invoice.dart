// invoice.dart
class Invoice {
  double itemPrice;
  double quantity;
  double taxPercent = 19;
  Invoice(
      {required this.itemPrice,
      required this.quantity,
      required this.taxPercent});
}
