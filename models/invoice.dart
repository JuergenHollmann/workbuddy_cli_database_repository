// invoice.dart
class Invoice {
  // Data required:
  double itemPrice;
  double quantity;
  double taxPercent = 19;
  bool paid = false;
  String invoiceID;
  String invoiceDate;

  // Data not required (but nice to have):
  // String articleWhich;
  // String articleWhere;

  Invoice({
    required this.itemPrice,
    required this.quantity,
    required this.taxPercent,
    required this.paid,
    required this.invoiceID,
    required this.invoiceDate,
  });
}
