import 'Account.dart';

void main() {
  dynamic user1 = BankAccount(
    "Ali",
    "Akbar",
    "ali.Akbar@gmail.com",
    12345678,
    123,
    "A'ali",
    "North",
    19,
    5000,
  );
  print(user1.balanse);
  user1.withdraw(1000.0);
}
