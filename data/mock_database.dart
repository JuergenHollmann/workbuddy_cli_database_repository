// mock_database.dart
import '../models/contact.dart';

import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  Map todoData = {};

  @override
  void addContact(String contactID, Contact newContact) {
    // Einen neuen Kontakt in die "Map todoData" einfügen:
    todoData[contactID] = newContact;
  }

  // void addContact(
  //     String contactID,
  //     String firstName,
  //     String lastName,
  //     String sex,
  //     int dayOfBirth,
  //     int monthOfBirth,
  //     int yearOfBirth,
  //     String tel1,
  //     String email1,
  //     Contact newContact,) {
  //   // Einen neuen Kontakt in die "Map todoData" einfügen:
  //   todoData[contactID] = newContact;
  // }

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

// void main() {
//   DatabaseRepository mockDatabase = MockDatabase();

  // // Erster Eintrag in Datenbank Imitation
  // Todo firstTodo = Todo(taskName: "Make Cofee", done: false);
  // mockDatabase.addTodo("01", firstTodo);

  // // Erster Eintrag in Datenbank Imitation
  // Todo firstTodo = Todo(taskName: "Make Cofee", done: false);
  // mockDatabase.addTodo("01", firstTodo);

  // // Zweiter Eintrag in Datenbank Imitation
  // Todo secondTodo = Todo(taskName: "Clean House", done: false);
  // mockDatabase.addTodo("02", secondTodo);

  // // Ausgabe aller Todo Namen
  // List<String> myTodoNames = mockDatabase.getAllTodoTitles();
  // print(myTodoNames);
// }
