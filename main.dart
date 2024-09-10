import "data/database_repository.dart";
import "data/mock_database.dart";
import "models/contact.dart";

void main() {
  DatabaseRepository mockDatabase = MockDatabase();

  // Erster Eintrag in die Datenbank
  Contact newContact = Contact(
      contactID: "12345",
      firstName: "Jürgen",
      lastName: "Hollmann",
      sex: "male",
      dayOfBirth: 29,
      monthOfBirth: 02,
      yearOfBirth: 1964,
      tel1: "071711234567890",
      email1: "test@test");

  mockDatabase.addContact(
      "12346",
      "Paul",
      "Müller",
      "male",
      01,
      01,
      1980,
      "0123456",
      "test2@test",
      "tel2",
      "email2",
      "occupation",
      "adress",
      newContact);


  print("${newContact.contactID}");
  print("${newContact.lastName}");
}

  // print(Contact(
  //     contactID: "12345",
  //     firstName: "Jürgen",
  //     lastName: "Hollmann",
  //     sex: "male",
  //     dayOfBirth: 29,
  //     monthOfBirth: 02,
  //     yearOfBirth: 1964,
  //     tel1: "071711234567890",
  //     email1: "test@test")); // Instance of 'Contact'


  // // Ausgabe aller Todo Namen
  // List<String> myTodoNames = mockDatabase.getAllTodoTitles();
  // print(myTodoNames);
