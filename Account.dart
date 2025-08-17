import 'dart:math';

class BankAccount {
  final int generatedId = Random().nextInt(1000);
  final String? FirstName;
  final String? LastName;
  final String? Email;
  final int? Phone;
  final int? Address;
  final String? City;
  final String? State;
  final int? Age;
  double? _balanse;

  BankAccount(
    this.FirstName,
    this.LastName,
    this.Email,
    this.Phone,
    this.Address,
    this.City,
    this.State,
    this.Age,
    this._balanse,
  );
  String get fullName => "$FirstName $LastName";
  String get address => "$Address, $City, $State";
  String get age => Age.toString();
  String get phone => Phone.toString();
  String get EmailAddress => Email ?? "No email provided";
  String get balanse => _balanse.toString();
  String get AccountDetails =>
      "ID: $generatedId, Name: $fullName, Email: $Email, Phone: $Phone, Address: $Address, City: $City, State: $State, Age: $Age, Balance: $_balanse";

  bool isValidEmail(String Email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(Email);
  }

  void deposit(double amount) {
    if (amount < 0) {
      print("Invalid");
    } else {
      _balanse = (_balanse ?? 0) + amount;
      print("Deposit successful. New balance: $_balanse");
    }
  }

  void withdraw(double amount) {
    if (_balanse! >= amount) {
      _balanse = _balanse! - amount;
      print("Withdrawal successful. New balance: $_balanse");
    } else {
      print("Insufficient balance");
    }
  }
}
