class AmtException implements Exception {
  String errMsg() => 'Amount should be greater than zero';
}

void main() {
  try {
    withdraw_amt(3);
  } catch (e) {
    AmtException e = new AmtException();
    print(e.errMsg());
  } finally {
    print('Ending requested operation.....');
  }
}

void withdraw_amt(int amt) {
  var exc = amt < 0 ? throw new AmtException() : amt; //true:false
  print(exc);
}
