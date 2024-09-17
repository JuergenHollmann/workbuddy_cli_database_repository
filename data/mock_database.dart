// mock_database.dart

import '../models/contact.dart';
import '../models/invoice.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
// ----------------- Bereich User -----------------
  @override
  // Überprüfen ob der Benutzername korrekt ist
  void checkUserName(String inputUserName) {}

  @override
  // Überprüfen ob das Passwort korrekt ist
  void checkPassword(String inputPassword) {}

  @override
  // Einen User erstellen
  void createUser(String userName, String password) {}

  @override
  // Einen User aufrufen
  void getUser(String userName, String password) {}

  @override
  // Die Daten eines Users ändern
  void updateUser(String userName, String password) {}

  @override
  // einen User löschen
  void deleteUser(String userName, String password) {}

// ----------------- Bereich Contact -----------------
  @override
  // Einen Kontakt erstellen
  void createContact(String contactID) {}

  @override
  // Einen Kontakt aufrufen
  void getContact(String contactID) {}

  @override
  // Alle Kontakte in einer Liste anzeigen lassen
  List<Contact> getAllContacts() {}

  @override
  // Die Daten eines Kontaktes ändern
  void updateContact(String contactID) {}

  @override
  // einen Kontakt löschen
  void deleteContact(String contactID) {}

// ----------------- Bereich Invoice -----------------
  @override
  // Eine Rechnung neu erfassen oder erstellen
  void addInvoice(double invoiceID) {}

  @override
  // In einer Rechnung das Ergebnis berechnen lassen
  void getInvoiceResult() {}

  @override
  // Überprüfen, ob der User hier NUR Ziffern und mit max. einem Punkt eingegeben hat.
  void checkIfQuantityNumFormat(double quantity) {}

  @override
  // Eine Rechnung anzeigen lassen
  void getInvoice(double invoiceID) {}

  @override
  // Alle Rechnungen anzeigen lassen
  List<Invoice> allInvoices() {}

  @override
  // Die Daten einer Rechnung ändern
  void updateInvoice(double invoiceID) {}

  @override
  // eine Rechnung löschen
  void deleteInvoice(double invoiceID) {}
}




















//   @override
//   void checkUserName(String inputUserName) {}

//   @override
//   void checkPassword(String inputPassword) {}

//   @override
//   void addInvoice(
//       double itemPrice,
//       double quantity,
//       double taxPercent,
//       bool paid,
//       double invoiceID,
//       double invoiceDate,
//       double articleWhich,
//       double articleWhere) {}

//   @override
//   void createContact(
//       String contactID,
//       String firstName,
//       String lastName,
//       String sex,
//       int dayOfBirth,
//       int monthOfBirth,
//       int yearOfBirth,
//       String tel1,
//       String email1,
//       String tel2,
//       String email2,
//       String occupation,
//       String adress) {
//     print("Kontakt-ID:   $contactID");
//     print("Vorname:      $firstName");
//     print("Nachname:     $lastName");
//     print("Geschlecht:   $sex");
//     print("GeburtsTAG:   $dayOfBirth");
//     print("GeburtsMONAT: $monthOfBirth");
//     print("GeburtsJAHR:  $yearOfBirth");
//     print("Telefon 1:    $tel1");
//     print("Telefon 2:    $tel2");
//     print("E-Mail 1:     $email1");
//     print("E-Mail 2:     $email2");
//     print("Beruf:        $occupation");
//     print("Adresse:      $adress");
//   }

//   // @override
//   // void createUser(String userName, String password) {}
//   @override
// String createUser((String userName, String password){
//  User newUser = User (userName: userName, password: password);
//  user.add(newUser);
//   }

//   @override
//   void deleteContact(
//       String contactID,
//       String firstName,
//       String lastName,
//       String sex,
//       int dayOfBirth,
//       int monthOfBirth,
//       int yearOfBirth,
//       String tel1,
//       String email1,
//       String tel2,
//       String email2,
//       String occupation,
//       String adress) {}

//   @override
//   void deleteInvoice(
//       double itemPrice,
//       double quantity,
//       double taxPercent,
//       bool paid,
//       double invoiceID,
//       double invoiceDate,
//       double articleWhich,
//       double articleWhere) {}

//   @override
//   void deleteUser(String userName, String password) {}

//   @override
//   List<Contact> getAllContacts() {
//     // Füge alle Kontakte in eine Liste
//     List<Contact> allMyContacts = <Contact>[];
//     // Iteriere über die Liste und füge jeden Kontakt hinzu
//     for (var contact in allMyContacts) {
//       //var result = contact;
//       allMyContacts.add(contact);
//       //print(result);
//     }
//     return allMyContacts;
//   }

//   @override
//   void getContact(
//       String contactID,
//       String firstName,
//       String lastName,
//       String sex,
//       int dayOfBirth,
//       int monthOfBirth,
//       int yearOfBirth,
//       String tel1,
//       String email1,
//       String tel2,
//       String email2,
//       String occupation,
//       String adress) {}

//   @override
//   void getInvoice(
//       double itemPrice,
//       double quantity,
//       double taxPercent,
//       bool paid,
//       double invoiceID,
//       double invoiceDate,
//       double articleWhich,
//       double articleWhere) {}

//   @override
//   void getUser(String userName, String password) {
//     print("Benutzername: $userName Passwort: $password");
//   }

//   @override
//   void updateContact(
//       String contactID,
//       String firstName,
//       String lastName,
//       String sex,
//       int dayOfBirth,
//       int monthOfBirth,
//       int yearOfBirth,
//       String tel1,
//       String email1,
//       String tel2,
//       String email2,
//       String occupation,
//       String adress) {}

//   @override
//   void updateInvoice(
//       double itemPrice,
//       double quantity,
//       double taxPercent,
//       bool paid,
//       double invoiceID,
//       double invoiceDate,
//       double articleWhich,
//       double articleWhere) {}

//   @override
//   void updateUser(String userName, String password) {}

//   @override
//   // void getAllInvoices(
//   //     double itemPrice,
//   //     double quantity,
//   //     double taxPercent,
//   //     bool paid,
//   //     double invoiceID,
//   //     double invoiceDate,
//   //     double articleWhich,
//   //     double articleWhere) {}

//       List<Invoice> allInvoices() { //todo
// List<Invoice> listAllInvoices = MockDatabase.getAllInvoicesList();
// print(listAllInvoices);




//   @override
//   void getInvoiceResult() {}

//   @override
//   void checkIfQuantityNumFormat(double quantity) {}

//   // @override
//   // double getInvoiceResult(double itemPrice, double quantity) {
//   //      itemPrice = 0;
//   //   quantity = 0;
//   //   throw UnimplementedError();
//   // }
// }
  //Map contactData = {};
  //List<User> users = [];
  

  //List<User> getAllUsers [];
  //List<Invoice> invoiceID = [];


  // void addContact(String contactID, Contact newContact) {
  // Einen neuen Kontakt in die "Map contactData" einfügen:
  // contactData[contactID] = newContact;
  // }

  // @override
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
  //   String tel2,
  //   String email2,
  //   String occupation,
  //   String adress,
  //   Contact newContact,
  // ) {
  //   // Einen neuen Kontakt in die "Map contactData" einfügen:
  //   contactData[contactID] = newContact;
  // }

  // void getUser(String userName, String password) {
  //   print(userName);
  //}






// @override
// void addUser(String newUserName, String newPassword){
// }

  // @override
  // void addInvoice(newInvoice) {
  // }

  // @override
  // void deleteInvoice(String invoiceID) {
  // }

  // @override
  // List<String> getAllInvoicesList() {
  //   //throw UnimplementedError();
  // }



  // @override
  // void removeTodo(String id) {
  //   // Checke ob die ID als key existiert, falls ja lösche das Todo
  //   if (todoData.containsKey(id)) {
  //     todoData.remove(id);
  //   } else {
  //     print('Item with ID $id not found.');
  //   }
  // }