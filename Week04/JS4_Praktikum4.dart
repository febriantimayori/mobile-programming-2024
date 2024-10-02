void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list); // perbaikan
  print(list2);
  print(list2.length);

  // Langkah 3
  /* var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length); */

  // Langkah 3 - Menambahkan NIM
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [2241720248, ...list1];
  print(list3);
  print(list3.length);

  // Langkah 4
  // var promoActive = true;
  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Langkah 5
  /* var login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2); */

  // Langkah 5 - Menunjukkan jika variabel login mempunyai kondisi lain
  var login = 'Admin';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory'
  ];
  print(nav2);

  // Langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
