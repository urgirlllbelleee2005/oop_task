// lib/main.dart
import 'bank_account.dart';
import 'savings_account.dart';
import 'checking_account.dart';
import 'business_account.dart';

void main() {
  print('--- Base BankAccount Demo ---');
  var base = BankAccount(owner: 'Alice', accountNumber: 1001, startingBalance: 100);
  print(base.info());
  base.deposit(50);
  base.withdraw(200);
  print('Balance (getter): \$${base.balance.toStringAsFixed(2)}');

  print('\n--- SavingsAccount Demo ---');
  var sav = SavingsAccount(owner: 'Bob', accountNumber: 2001, startingBalance: 300, interestRate: 2.0);
  print(sav.info());
  sav.applyMonthlyInterest();
  sav.withdraw(50);

  print('\n--- CheckingAccount Demo ---');
  var chk = CheckingAccount(owner: 'Carol', accountNumber: 3001, startingBalance: 500, freeTransactions: 2);
  chk.withdraw(100); // free
  chk.withdraw(100); // free
  chk.withdraw(100); // now fee applies
  chk.resetTransactions();

  print('\n--- BusinessAccount Demo ---');
  var biz = BusinessAccount(owner: 'Dave', accountNumber: 4001, startingBalance: 1000, loanLimit: 2000);
  print(biz.info());
  biz.requestLoan(1500); // valid
  biz.requestLoan(3000); // exceeds limit
}
