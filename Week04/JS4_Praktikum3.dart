void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);

  // Menambahkan nama dan nim
  gifts.addAll({'Nama': 'Febrianti Mayori', 'NIM': '2241720248'});
  nobleGases.addAll({4: 'Febrianti Mayori', 5: '2241720248'});
  mhs1.addAll({'Nama': 'Febrianti Mayori', 'NIM': '2241720248'});
  mhs2.addAll({1: 'Febrianti Mayori', 2: '2241720248'});
  print("---------------------------------------------------------");
  print("Menambahkan elemen nama dan NIM Anda pada tiap variabel.");
  print("---------------------------------------------------------");
  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
