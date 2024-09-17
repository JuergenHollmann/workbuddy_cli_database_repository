// database_repository.dart
import '../models/contact.dart';
//import '../models/invoice.dart';
// ignore: unused_import
import "../models/user.dart";

abstract class DatabaseRepository {
  // ----------------- Bereich User -----------------

  // Überprüfen ob der Benutzername korrekt ist
  void checkUserName(String inputUserName);

  // Überprüfen ob das Passwort korrekt ist
  void checkPassword(String inputPassword);

  // // Einen User erstellen
  // void createUser();

  // Einen User aufrufen
  void getUser(String userName, String password);

  // Die Daten eines Users ändern
  void updateUser(String userName, String password);

  // einen User löschen
  void deleteUser(String userName, String password);

  // ----------------- Bereich Contact -----------------

  // Einen Kontakt erstellen
  void createContact(String contactID);

  // Einen Kontakt aufrufen
  void getContact(String contactID);

  // Alle Kontakte in einer Liste anzeigen lassen
  List<Contact> getAllContacts();

  // Die Daten eines Kontaktes ändern
  void updateContact(String contactID);

  // einen Kontakt löschen
  void deleteContact(String contactID);

  // ----------------- Bereich Invoice -----------------

  // Eine Rechnung neu erfassen oder erstellen
  void addInvoice(double invoiceID);

  // In einer Rechnung das Ergebnis berechnen lassen
  void getInvoiceResult() {}

  // Überprüfen, ob der User hier NUR Ziffern und mit max. einem Punkt eingegeben hat.
  void checkIfQuantityNumFormat(double quantity) {}

  // Eine Rechnung anzeigen lassen
  void getInvoice(double invoiceID);

  // // Alle Rechnungen anzeigen lassen
  // List<Invoice> getAllInvoices();

  // Die Daten einer Rechnung ändern
  void updateInvoice(double invoiceID);

  // eine Rechnung löschen
  void deleteInvoice(double invoiceID);
}
