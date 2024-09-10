// database_repository.dart
import "../models/contact.dart";
//import "../models/invoice.dart";

abstract class DatabaseRepository {
  // Create
  // void addContact(
  //   String contactID,
  //   String firstName,
  //   String lastName,
  //   String sex,
  //   int dayOfBirth,
  //   int monthOfBirth,
  //   int yearOfBirth,
  //   String tel1,
  //   String email1,
  //   Contact newContact,
  // );

  void addContact(String contactID, Contact newContact);

  // void addInvoice(Invoice newInvoice); // Parameter?

  // // Read
  // List<String> getAllInvoicesList();

  // // Delete
  // void deleteInvoice(String invoiceID);
}
