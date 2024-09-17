// contacts.dart
class Contact {
  String contactID;
  String firstName;
  String lastName;
  // String sex;
  // int dayOfBirth;
  // int monthOfBirth;
  // int yearOfBirth;
  // String tel1;
  // String email1;
  // String tel2;
  // String email2;
  // String occupation;
  // String adress;
  // u.s.w. ...

  Contact(
      {required this.contactID,
      required this.firstName,
      required this.lastName});
  // required this.sex,
  // required this.dayOfBirth,
  // required this.monthOfBirth,
  // required this.yearOfBirth,
  // required this.tel1,
  // required this.email1})
  // : this.tel2 = "",
  //   this.email2 = "",
  //   this.occupation = "",
  //   this.adress = "";

  @override
  String toString() {
    return "Eingetragen von --> Kontakt-ID: $contactID --> Name: $firstName $lastName\n---------------------------------------------------------------------";

  }

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
      String adress) {
    print("Vorname: $firstName Nachname: $lastName");
  }

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
      String adress) {
    print("Vorname: $firstName Nachname: $lastName");
  }

  // // Alle Kontakte in einer Liste anzeigen lassen
  // List getAllContacts() {
  //   List allMyContacts = [
  //     contactID,
  //     firstName,
  //     lastName
  //     // sex,
  //     // dayOfBirth,
  //     // monthOfBirth,
  //     // yearOfBirth,
  //     // tel1,
  //     // email1,
  //     // tel2,
  //     // email2,
  //     // occupation,
  //     // adress
  //   ];
  //   print(allMyContacts);
  // }

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
      String adress) {
    print("Vorname: $firstName Nachname: $lastName");
  }

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
      String adress) {
    print("Vorname: $firstName Nachname: $lastName");
  }
}

void addContact(
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
    String adress,
    Contact newContact) {
  // Einen neuen Kontakt in die "Map contactData" einfügen:
  Map contactData = {};
  contactData[contactID] = newContact;

  // @override
  // String toString() {
  //   return "---> Kontakt-ID: $contactID - Name: $firstName $lastName";
  // }
}
