void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Langkah 3
  print(tukar((05, 15)));

  // Langkah 4
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ("Febrianti Mayori", 2241720248);
  print(mahasiswa);

  // Langkah 5
  /* var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last' */

  // Langkah 5 - Mengganti isi record dengan nama dan nim
  var mahasiswa2 = ('Febrianti Mayori', a: 2, b: true, '2241720248');
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
