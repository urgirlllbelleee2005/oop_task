// lib/bank_account.dart
class BankAccount {
  final String owner;
  double _balance; // private field (encapsulated)
  int _accountNumber;

  // Constructor
  BankAccount({
    required this.owner,
    required int accountNumber,
    double startingBalance = 0,
  })  : _accountNumber = accountNumber,
        _balance = startingBalance;

  // Getter for balance (read-only outside)
  double get balance => _balance;

  // Getter + Setter for account number (setter validates input)
  int get accountNumber => _accountNumber;
  set accountNumber(int value) {
    if (value <= 0) {
      throw ArgumentError('Account number must be positive.');
    }
    _accountNumber = value;
  }

  // Method 1: deposit
  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit failed: amount must be positive.');
      return;
    }
    _balance += amount;
    print('Deposit: \$${amount.toStringAsFixed(2)} -> Balance: \$${_balance.toStringAsFixed(2)}');
  }

  // Method 2: withdraw
  bool withdraw(double amount) {
    if (amount <= 0) {
      print('Withdraw failed: amount must be positive.');
      return false;
    }
    if (amount > _balance) {
      print('Withdraw failed: insufficient funds.');
      return false;
    }
    _balance -= amount;
    print('Withdraw: \$${amount.toStringAsFixed(2)} -> Balance: \$${_balance.toStringAsFixed(2)}');
    return true;
  }

  // Info method
  String info() => 'Account #$_accountNumber (${owner}) — Balance: \$${_balance.toStringAsFixed(2)}';
}
