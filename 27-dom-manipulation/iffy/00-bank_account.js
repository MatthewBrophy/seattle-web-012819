function bankAccount() {
  let balance = 0;

  return {
    checkBalance: function() {
        return balance;
    },
    deposit: function(amount) {
        balance += amount;
    },
    withdraw: function(amount) {
      if (amount <= balance) {
        balance -= amount;
        return amount;
      }
      return 0;
    }
  }
}

const account = bankAccount();
console.log('create new account');
console.log('balance 0?', account.checkBalance());
console.log()

account.deposit(50);
console.log('deposit 50');
console.log('balance 50?', account.checkBalance());
console.log()

account.withdraw(40);
console.log('withdraw 40');
console.log('balance 10?', account.checkBalance());
console.log()

account.withdraw(15);
console.log('try to overdraw withdrawing 15');
console.log('balance still 10?', account.checkBalance());
console.log()

console.log('Can we read the balance directly?');
console.log(account.balance);
console.log();

account.balance += 9999
console.log('Massive illigitimate access')
console.log('balance 10?', account.checkBalance())