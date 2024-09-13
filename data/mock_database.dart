// mock_database.dart

import '../models/contact.dart';
// import '../models/invoice.dart';
// import '../models/user.dart';
//import '../models/invoice.dart';
import '../models/invoice.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  @override
  void checkUserName(String inputUserName){}

  @override
  void checkPassword(String inputPassword) {}

  @override
  void addInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere) {}

  @override
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
      String adress) {
    print("Kontakt-ID:   $contactID");
    print("Vorname:      $firstName");
    print("Nachname:     $lastName");
    print("Geschlecht:   $sex");
    print("GeburtsTAG:   $dayOfBirth");
    print("GeburtsMONAT: $monthOfBirth");
    print("GeburtsJAHR:  $yearOfBirth");
    print("Telefon 1:    $tel1");
    print("Telefon 2:    $tel2");
    print("E-Mail 1:     $email1");
    print("E-Mail 2:     $email2");
    print("Beruf:        $occupation");
    print("Adresse:      $adress");
  }

  @override
  void createUser(String userName, String password) {}

  @override
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
      String adress) {}

  @override
  void deleteInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere) {}

  @override
  void deleteUser(String userName, String password) {}

  @override
  List<Contact> getAllContacts() {
    // Füge alle Kontakte in eine Liste
    List<Contact> allMyContacts = <Contact>[];
    // Iteriere über die Liste und füge jeden Kontakt hinzu
    for (var contact in allMyContacts) {
      //var result = contact;
      allMyContacts.add(contact);
      //print(result);
    }
    return allMyContacts;
  }

  @override
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
      String adress) {}

  @override
  void getInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere) {}

  @override
  void getUser(String userName, String password) {
    print("Benutzername: $userName Passwort: $password");
  }

  @override
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
      String adress) {}

  @override
  void updateInvoice(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere) {}

  @override
  void updateUser(String userName, String password) {}

  @override
  void getAllInvoices(
      double itemPrice,
      double quantity,
      double taxPercent,
      bool paid,
      double invoiceID,
      double invoiceDate,
      double articleWhich,
      double articleWhere) {}

  @override
  List<Invoice> allInvoices() {
    throw UnimplementedError();
  }

  @override
  void getInvoiceResult() {}

  // @override
  // double getInvoiceResult(double itemPrice, double quantity) {
  //      itemPrice = 0;
  //   quantity = 0;
  //   throw UnimplementedError();
  // }
}
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
// void createUser((String userName, String password){
//  User newUser = User (userName: userName, password:password);
//  user.add(newUser)
//   }




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