import "dart:io";
import "data/database_repository.dart";
import "data/mock_database.dart";
import "models/contact.dart";

void main() {
  stdout.write(
      "\x1B[2J\x1B[0;0H"); // entfernt die Zusatz-Info im Terminal --> benötigt import "dart:io";
  print("-------------------------------------------------------------------");
  DatabaseRepository mockDatabase = MockDatabase();

  // Erster Eintrag in die Datenbank
  Contact newContact = Contact(
      contactID: "12345",
      firstName: "Klaus",
      lastName: "Maier");
      // sex: "male",
      // dayOfBirth: 02,
      // monthOfBirth: 02,
      // yearOfBirth: 1990,
      // tel1: "071711234567890",
      // email1: "test@test");
  print(
      "Der neue Kontakt ${newContact.firstName} ${newContact.lastName} wurde mit der Kontakt-ID ${newContact.contactID} eingetragen.");
  print("-------------------------------------------------------------------");
  // mockDatabase.addContact(
  //     "123434",
  //     "Paul",
  //     "Müller",
  //     "male",
  //     01,
  //     01,
  //     1980,
  //     "0123456",
  //     "test2@test",
  //     "tel2",
  //     "email2",
  //     "occupation",
  //     "adress",
  //     newContact);

  print(mockDatabase.toString()); // Instance of 'MockDatabase'
  mockDatabase.getUser("Klaus", "12345678");
  print(MockDatabase()); // Instance of 'MockDatabase'
  print(mockDatabase); // Instance of 'MockDatabase'
  print(mockDatabase
      .getUser); // Closure: (String, String) => void from Function 'getUser':.
  print("-------------------------------------------------------------------");
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
// String contactID = "";
//     String firstName = "";
//     String lastName = "";
//     String sex = "";
//     int dayOfBirth = 0;
//     int monthOfBirth = 0;
//     int yearOfBirth = 0,
//     String tel1 = "";
//     String email1 = "";
//     String tel2 = "";
//     String email2 = "";
//     String occupation = "";
//     String adress = "";

// List getta = [1,2,3,4,5];
// List getAllContacts = ["contactID"]

// testDatabase.addUser ("Viktor", "passwort123");
// List<User> allUsers = testDatabase.getAllUsers ()f
// //testDatabase. checkUserCredentials("Viktor", "17284f") printAllUsers (allUsers);
// testDatabase. addUser ("Fadi", 'Call Of Duty 11');
// printAllUsers (allUsers);
// ｝
// void printAllUsers (List<User> allUsers) {
// for (User user in allUsers) {
// print (user);
// ｝

// @override
// bool checkUserCredentials(String userName, String password) {
//   for (User currentUser in _users) {
//     if (currentUser.userName == userName) {
//       if (currentUser.password == password) {
//         return true;
//       }
//     }
//   }
// }
