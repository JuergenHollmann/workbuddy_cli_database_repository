// user.dart
class User {
  String userName;
  String password;

  User({required this.userName, required this.password});

  @override
  String toString() {
    return "($userName $password)";
  }

  // Einen User erstellen
  void createUser(String userName, String password) {
    // code
  }

  // Einen User aufrufen
  void getUser(String userName, String password) {
    // print("Benutzername: $userName Passwort: $password");
  }

  // Die Daten eines Users ändern
  void updateUser(String userName, String password) {
    // code
  }

  // einen User löschen
  void deleteUser(String userName, String password) {
    // code
  }

// Überprüfen ob der Benutzername korrekt ist
// aus der function übernommen - check_username.dart
  bool checkUserName(String inputUserName) {
    String checkUserName = "Jürgen";
    bool result = false;
    if (checkUserName == inputUserName) {
      result = true;
    } else if (checkUserName != inputUserName) {
      // das "if" ist eigentlich überflüssig, nur zur Übung!
      result = false;
    }
    return result;
// print(functionCheckUserName(inputUserName)); // gibt den bool-Wert zurück
  }

// Überprüfen ob das Passwort korrekt ist
// aus der function übernommen - check_password.dart
  bool checkPassword(String inputPassword) {
    String checkPassword = "Passwort";
    bool result = false;
    if (checkPassword == inputPassword) {
      result = true;
    } else {
      result = false;
    }
    return result;
// print(functionCheckPassword(inputPassword)); // gibt den bool-Wert zurück
  }
}
