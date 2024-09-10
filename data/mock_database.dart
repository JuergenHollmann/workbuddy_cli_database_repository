// mock_database.dart
import '../models/contact.dart';

import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  Map contactData = {};

  @override
  // void addContact(String contactID, Contact newContact) {
  // Einen neuen Kontakt in die "Map contactData" einfügen:
  // contactData[contactID] = newContact;
  // }

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
    Contact newContact,
  ) {
    // Einen neuen Kontakt in die "Map contactData" einfügen:
    contactData[contactID] = newContact;
  }

  // @override
  // List<String> getAllTodoTitles() {
  //   // Füge alle Todo Titel in eine Liste und gebe sie aus
  //   List<String> allTodoTitles = [];
  //   // Iteriere über die Liste und füge von jedem Todo den taskname hinzu
  //   todoData.forEach((key, todo) {
  //     allTodoTitles.add(todo.taskName);
  //   });

  //   return allTodoTitles;
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
}
