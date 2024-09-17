// invoice.dart
// import '../data/mock_database.dart';

class Invoice {
  // Data required:
  double itemPrice = 0;
  double quantity = 0;
  double taxPercent = 19;
  bool paid = false;
  String invoiceID;
  String invoiceDate;
  // Data not required (but nice to have):
  String articleWhich;
  String articleWhere;

  Invoice(
      {required this.itemPrice,
      required this.quantity,
      required this.taxPercent,
      required this.paid,
      required this.invoiceID,
      required this.invoiceDate})
      : this.articleWhich = "",
        this.articleWhere = "";

  @override
  String toString() {
    return "($itemPrice $quantity $taxPercent $paid $invoiceID $invoiceDate $articleWhich $articleWhere)";
  }

// Überprüfen, ob der User hier NUR Ziffern und mit max. einem Punkt eingegeben hat.

// double checkIfQuantityNumFormat(double quantity){

//   String input = "$quantity";
//   if (int.tryParse(input) != null) {
//             print(
//                 "---------------------------------------------------------------------");
//     print("Deine Eingabe ist numerisch: --> $input <--");
//   } else {
//             print(
//                 "---------------------------------------------------------------------");
//     print("Deine Eingabe ist NICHT numerisch: --> $input <--");
//     print("Es sind nur Ziffern von 0 bis 9 und ein Punkt erlaubt!");
//   }
//             print(
//                 "---------------------------------------------------------------------");

  // Eine Rechnung neu erfassen oder erstellen
  void addInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere) {}

  // Eine Rechnung anzeigen lassen
  void getInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere) {
    print(
        "$itemPrice $quantity $taxPercent $paid $invoiceID $invoiceDate $articleWhich $articleWhere");
  }

  // Alle Rechnungen anzeigen lassen
  // void getAllInvoices(
  //     double itemPrice,
  //     double quantity,
  //     double taxPercent,
  //     bool paid,
  //     double invoiceID,
  //     double invoiceDate,
  //     double articleWhich,
  //     double articleWhere) {

  // List<Invoice> getAllInvoices() {
  //   //todo
  //   List<Invoice> listAllInvoices = MockDatabase.getAllInvoicesList();
  //   print(listAllInvoices);

  //   print(
  //       "$itemPrice $quantity $taxPercent $paid $invoiceID $invoiceDate $articleWhich $articleWhere");
  // }

  // Die Daten einer Rechnung ändern
  void updateInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere) {
    // code
  }

  // eine Rechnung löschen
  void deleteInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere) {
    // code
  }

// In einer Rechnung das Ergebnis berechnen lassen
  double getInvoiceResult(double itemPrice, double quantity) {
    double taxPercent = 19;
    double taxSum;
    double totalSum;
    taxSum = itemPrice * quantity * (taxPercent / 100);
    totalSum = itemPrice * quantity + taxSum;
    print(
        "Netto-Einzelpreis:    ${itemPrice.toStringAsFixed(2)} € pro Stück"); // auf 2 Stellen nach dem Komma gekürzt mit "toStringAsFixed(2)".
    print(
        "gekaufte Einheiten:   $quantity Stück"); // auf 2 Stellen nach dem Komma kürzen, wenn kg oder andere Einheiten ausgewählt werden.
    print(
        "Mehrwertsteuer:       ${taxSum.toStringAsFixed(2)} €"); // auf 2 Stellen nach dem Komma gekürzt mit "toStringAsFixed(2)".
    print(
        "Gesamtsumme           ${totalSum.toStringAsFixed(2)} €"); // auf 2 Stellen nach dem Komma gekürzt mit "toStringAsFixed(2)".
    print(
        "---------------------------------------------------------------------");
    return totalSum; // auf 2 Stellen nach dem Komma gekürzt mit "toStringAsFixed(2)".
  }
}




  // void getAllInvoices(
  //     double itemPrice,
  //     double quantity,
  //     double taxPercent,
  //     bool paid,
  //     double invoiceID,
  //     double invoiceDate,
  //     double articleWhich,
  //     double articleWhere);