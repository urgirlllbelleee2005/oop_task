import 'bank_account.dart';


void main() {
  print('--- Base BankAccount Demo ---');
  var base = BankAccount(owner: 'Alice', accountNumber: 1001, startingBalance: 100);
  print(base.info());
  base.deposit(50);
  base.withdraw(200);
  print('Balance (getter): \$${base.balance.toStringAsFixed(2)}');
}