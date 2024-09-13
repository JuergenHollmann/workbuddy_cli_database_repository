// database_repository.dart
import '../models/contact.dart';
import '../models/invoice.dart';

abstract class DatabaseRepository {
  // Einen User erstellen
  void createUser(String userName, String password);

  // Überprüfen ob der Benutzername korrekt ist
  bool checkUserName(String inputUserName);

  // Überprüfen ob das Passwort korrekt ist
  bool checkPassword(String inputPassword);

  // Einen User aufrufen
  void getUser(String userName, String password);

  // Die Daten eines Users ändern
  void updateUser(String userName, String password);

  // einen User löschen
  void deleteUser(String userName, String password);

  // Einen Kontakt erstellen
  void createContact(
      String contactID,
      String firstName,
      String lastName,
      String sex,
      int dayOfBirth,
      int monthOfBirth,
      int yearOfBirth,
      String tel1,
      String email1,
      String tel2,
      String email2,
      String occupation,
      String adress);

  // Einen Kontakt aufrufen
  void getContact(
      String contactID,
      String firstName,
      String lastName,
      String sex,
      int dayOfBirth,
      int monthOfBirth,
      int yearOfBirth,
      String tel1,
      String email1,
      String tel2,
      String email2,
      String occupation,
      String adress);

  // Alle Kontakte in einer Liste anzeigen lassen
  List<Contact> getAllContacts();

  // Die Daten eines Kontaktes ändern
  void updateContact(
      String contactID,
      String firstName,
      String lastName,
      String sex,
      int dayOfBirth,
      int monthOfBirth,
      int yearOfBirth,
      String tel1,
      String email1,
      String tel2,
      String email2,
      String occupation,
      String adress);

  // einen Kontakt löschen
  void deleteContact(
      String contactID,
      String firstName,
      String lastName,
      String sex,
      int dayOfBirth,
      int monthOfBirth,
      int yearOfBirth,
      String tel1,
      String email1,
      String tel2,
      String email2,
      String occupation,
      String adress);

  // Eine Rechnung neu erfassen oder erstellen
  void addInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere);

  // In einer Rechnung das Ergebnis berechnen lassen
  void getInvoiceResult() {}

  // Eine Rechnung anzeigen lassen
  void getInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere);

  // Alle Rechnungen anzeigen lassen
  void getAllInvoices(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere);
  List<Invoice> allInvoices();

  // Die Daten einer Rechnung ändern
  void updateInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere);

  // eine Rechnung löschen
  void deleteInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere);
}
