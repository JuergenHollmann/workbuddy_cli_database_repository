import "dart:io" show stdin, stdout;
import "data/database_repository.dart";
import "data/mock_database.dart";
import "models/contact.dart";
import "models/invoice.dart";
import "functions/check_username.dart";
import "functions/check_password.dart";

void main() {
  stdout.write("\x1B[2J\x1B[0;0H");
  print(
      "---------------------------------------------------------------------");
  print(
      "---[ \u{1F6E0} ]--> Willkommen bei WorkBuddy! <--[ \u{1F6E0} ]---"); // 🛠
  print(
      "WorkBuddy ist eine App, die Dir unter dem Motto \"save time and money\"");
  print("hilft, deine Buchhaltung besser zu organisieren.");
  print(
      "---------------------------------------------------------------------");
  bool isMenuPartOneRunning = true;
  bool isMenuPartTwoRunning = false;

// Wie lange läuft der erste Teil des Programms?
  while (isMenuPartOneRunning) {
    print(
        "Was möchtest du jetzt tun? \n * Jetzt ei[n]loggen \n * Die App [b]eenden \n Bitte alle Eingaben mit \"Enter\" bestätigen.");
    print(
        "---------------------------------------------------------------------");
// Eingabe des Benutzers.
    String userChoiceInput = stdin.readLineSync()!;
    print(
        "---------------------------------------------------------------------");
    switch (userChoiceInput) {
// 2) Der Benutzer möchte das Programm beenden.
      case "b" || "B":
        isMenuPartOneRunning = false;
        print("Du hast [$userChoiceInput] = \"Beenden\" eingegeben.");
        print(
            "---------------------------------------------------------------------");
        print("Die App wurde vom User beendet.");
        print(
            "---------------------------------------------------------------------");
// 1) Der Benutzer möchte sich mit seinem Benutzernamen und Passwort einloggen:
      case "n" || "N":
        print("Du hast [$userChoiceInput] = \"Einloggen\" eingegeben.");
        print(
            "---------------------------------------------------------------------");
// 1a) Der Benutzer muss seinen Benutzernamen eingeben:
        stdout.write("Bitte gib deinen Benutzernamen ein: ");
        String inputUserName = stdin.readLineSync()!;
        print("Du hast \"$inputUserName\" als Benutzername eingegeben.");
// Überprüfen ob der Benutzername korrekt ist --> mit functionCheckUserName:
        if (functionCheckUserName(inputUserName) == true) {
          print(
              "Der Benutzername \"$inputUserName\" wurde \u{1f600} korrekt \u{1f600} eingegeben!"); // \u{1f600} = 😀
        } else {
          print(
              "Der Benutzername \"$inputUserName\" ist leider NICHT korrekt!");
          print(
              "---------------------------------------------------------------------");
          break;
        }
        print(
            "---------------------------------------------------------------------");
// 1b) Der Benutzer muss sein Passwort eingeben:
        stdout.write("Bitte gib dein Passwort ein: ");
        String inputPassword = stdin.readLineSync()!;
        print("Du hast \"$inputPassword\" als Passwort eingegeben.");
// Überprüfen ob das Passwort korrekt ist --> mit functionCheckPassword:
        if (functionCheckPassword(inputPassword) == true) {
          print(
              "Der Passwort \"$inputPassword\" wurde \u{1f600} korrekt \u{1f600} eingegeben!"); // \u{1f600} = 😀
        } else {
          print("Der Passwort \"$inputPassword\" ist leider NICHT korrekt!");
          print(
              "---------------------------------------------------------------------");
          break;
        }
        print(
            "---------------------------------------------------------------------");
        isMenuPartOneRunning = false;
        isMenuPartTwoRunning = true;
      default:
        print("Deine Eingabe --> $userChoiceInput <-- war ungültig!");
    }
    if (isMenuPartTwoRunning) {
// Wenn es in den nächsten Bereich gehen soll: Wie lange läuft der zweite Teil des Programms?
      while (isMenuPartTwoRunning) {
        isMenuPartTwoRunning = true;
        print(
            "Was möchtest du jetzt tun? \n * Eine Qui[t]tung eingeben \n * Die App [b]eenden \n Bitte die Eingabe mit \"Enter\" bestätigen.");
        print(
            "---------------------------------------------------------------------");
// Eingabe des Benutzers.
        String userChoiceInput = stdin.readLineSync()!;
        print("Du hast [$userChoiceInput] eingegeben.");
        print(
            "---------------------------------------------------------------------");
// Überprüfen, was der Benutzer eingegeben hat und ob das einem der cases entspricht:
        switch (userChoiceInput) {
// 2) Der Benutzer mmöchte das Programm beenden.
          case "b" || "B":
            isMenuPartTwoRunning = false;
            print("Du hast [$userChoiceInput] = \"Beenden\" eingegeben.");
            print(
                "---------------------------------------------------------------------");
            print("Die App wurde vom User beendet.");
            print(
                "---------------------------------------------------------------------");
// 3) Der Benutzer möchte jetzt eine Quittung eingeben.
          case "t" || "T":
// 4a) Der Benutzer muss eingeben, bei welchem Händler er eingekauft hat.
            stdout.write("Wo warst Du beim Einkaufen?                    ");
            String userChoiceInput4a = stdin.readLineSync()!;
            print("Du warst einkaufen bei \"$userChoiceInput4a.\"");
            print(
                "---------------------------------------------------------------------");
// 4b) Der Benutzer muss eingeben, welchen Artikel er bei dem Händler eingekauft hat.
            stdout.write("Welchen Artikel hast Du gekauft?               ");
            String userChoiceInput4b = stdin.readLineSync()!;
            print("Du hast dort den Artikel \"$userChoiceInput4b\" gekauft.");
            print(
                "---------------------------------------------------------------------");
// 4c) Der Benutzer muss eingeben, wieviel Stück er von dem Artikel eingekauft hat.
            stdout.write(
                "Wieviel Stück von dem Artikel hast Du gekauft? "); // xxxPrice
            String userChoiceInput4c = stdin.readLineSync()!;
// Überprüfen, ob der User hier NUR Ziffern und mit max. einem Punkt eingegeben hat.
//   String input = "$userChoiceInput4c";
//   if (int.tryParse(input) != null) {
//     print("----------------------------------------------");
//     print("Deine Eingabe ist numerisch: --> $input <--");
//   } else {
//     print("----------------------------------------------");
//     print("Deine Eingabe ist NICHT numerisch: --> $input <--");
//     print("Es sind nur Ziffern von 0 bis 9 und ein Punkt erlaubt!");
//   }
//   print("----------------------------------------------");
// }
// 4d) Der Benutzer muss eingeben, was 1 Stück von dem Artikel kostet.
            stdout.write("Was hat der Artikel (in €) gekostet?           ");
            String userChoiceInput4d = stdin.readLineSync()!;
// Überprüfen, ob der User hier NUR Ziffern (als double und mit max. einem Punkt und "0" darf erlaubt sein) eingegeben hat.
// Wenn der User nur Ziffern eigegeben hat, die MwSt. berechnen.
// -> erledigt in function "getInvoiceResult".
// Nach der MwSt.-Berechnung die Zwischensumme mit der Anzahl der Artikel multiplizieren.
// -> erledigt in function "getInvoiceResult".

// 5) Das Ergebnis der Berechnung ausgeben:
// -> funktioniert in der Methode "getInvoiceResult".
// -> funktioniert in der Klasse Invoice mit "import "models/invoice.dart";"
            print(
                "---------------------------------------------------------------------");
            Invoice testInvoice = Invoice(
                itemPrice: double.parse(userChoiceInput4d),
                quantity: double.parse(userChoiceInput4c),
                taxPercent: 19,
                paid: true,
                invoiceID: "12345",
                invoiceDate: "12.09.2024");
            testInvoice.getInvoiceResult(double.parse(userChoiceInput4d),
                double.parse(userChoiceInput4c));

            print(
                "Du hast bei $userChoiceInput4a für $userChoiceInput4c Stück $userChoiceInput4b einen Betrag über ${testInvoice.getInvoiceResult(double.parse(userChoiceInput4d), double.parse(userChoiceInput4c)).toStringAsFixed(2)} € ausgegeben.");
            print(
                "---------------------------------------------------------------------");
            isMenuPartTwoRunning = false;
          default:
            print("Deine Eingabe --> $userChoiceInput <-- war ungültig!");
        }
      }
    }
  }
  print(
      "---------------------------------------------------------------------");
  DatabaseRepository mockDatabase = MockDatabase();
  // Eintrag in die Datenbank vorbereiten:
  Contact newContact = Contact(
      contactID: "12345",
      firstName: "Klaus",
      lastName: "Maier",
      sex: "male",
      dayOfBirth: 02,
      monthOfBirth: 02,
      yearOfBirth: 1990,
      tel1: "07171-12345-67890",
      email1: "test@test");
  print(
      "Der neue Kontakt ${newContact.firstName} ${newContact.lastName} wurde mit der Kontakt-ID ${newContact.contactID} eingetragen.");
  print(
      "---------------------------------------------------------------------");
  mockDatabase.createContact(
      "65432",
      "Josef",
      "Müller",
      "männlich",
      10,
      10,
      1970,
      "0170-1234567",
      "Josef@Mmüller.de",
      "keine",
      "Putzi@Müller.de",
      "Bäcker",
      "73525 Müllhausen / Straße 22");
  mockDatabase.getUser("Putzi", "1234567890");
//mockDatabase.getAllContacts();
//List<Invoice> allInvoices();
// Alle Kontakte in einer Liste anzeigen lassen
  List<Contact> allMyContacts = mockDatabase.getAllContacts();
  Contact(
      contactID: "765432345",
      firstName: "Bert",
      lastName: "Schreiner",
      sex: "männlich",
      dayOfBirth: 10,
      monthOfBirth: 10,
      yearOfBirth: 1980,
      tel1: "000111",
      email1: "email1");
  print(allMyContacts);
  print(
      "---------------------------------------------------------------------");
  // den Text aus der Klasse "Contact" bei "@override String toString()" ausdrucken:
  print(Contact(
      contactID: "123456",
      firstName: "Jürgen",
      lastName: "Hollmann",
      sex: "male",
      dayOfBirth: 29,
      monthOfBirth: 02,
      yearOfBirth: 1964,
      tel1: "071711234567890",
      email1: "test@test"));
}

























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
