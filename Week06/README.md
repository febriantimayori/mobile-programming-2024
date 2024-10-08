# **#06 | Layout dan Navigasi**
## **Febrianti Mayori** | 2241720248 | TI-3D

## Praktikum 1: Membangun Layout di Flutter
### Langkah 1: Buat Project Baru
![alt text](/Week06/images/P1L1.png)

### Langkah 2: Buka file lib/main.dart
![alt text](/Week06/images/P1L2.png)

### Langkah 3: Identifikasi layout diagram
Langkah ini memecah tata letak menjadi elemen dasarnya.

### Langkah 4: Implementasi title row
1. Letakkan widget `Column` di dalam widget `Expanded` agar menyesuaikan ruang yang tersisa di dalam widget `Row`. Tambahkan properti `crossAxisAlignment` ke `CrossAxisAlignment`.start sehingga posisi kolom berada di awal baris.

    ```dart
    /* Soal 1*/
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
    ```

2. Letakkan baris pertama teks di dalam `Container` sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks `‘Batu, Malang, Indonesia'` di dalam `Column`, set warna menjadi abu-abu.

    ```dart
    /* Soal 2 */
    Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: const Text(
            'Wisata Gunung di Batu',
            style: TextStyle(
                fontWeight: FontWeight.bold,
            ),
        ),
    ),
    Text(
        'Batu, Malang, Indonesia',
        style: TextStyle(
        color: Colors.grey[500],
        ),
    ),
    ```

3. Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam `Container` dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi `body text ‘Hello World'` dengan variabel `titleSection`.

    ```dart
    /* Soal 3 */
    Icon(
        Icons.star,
        color: Colors.red[500],
    ),
        const Text("41"),

    return MaterialApp(
      title: 'Flutter Layout: Febrianti Mayori | 2241720248',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo: Febrianti M | 2241720248'),
          ),
          body: Column(
          children: [
            titleSection
          ],
        ),
      ),
    );
    ```

Hasil\
![alt text](/Week06/images/P1L4.png)

## Praktikum 2: Implementasi button row
### Langkah 1: Buat method Column _buildButtonColumn

```dart
Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
```

### Langkah 2: Buat widget buttonSection

```dart
Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);
```

### Langkah 3: Tambah button section ke body
![alt text](/Week06/images/P2L3.png)

## Praktikum 3: Implementasi text section
### Langkah 1: Buat widget textSection

```dart
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Coban Talun adalah salah satu destinasi wisata alam yang populer di Malang, Jawa Timur. '
    'Tempat ini menawarkan suasana alam yang asri dan menenangkan. Air terjun, hutan pinus, dan area glamping '
    'menjadikannya destinasi favorit untuk keluarga dan pecinta alam. Banyak kegiatan menarik yang dapat dilakukan, '
    'seperti trekking, camping, dan outbound. Destinasi ini cocok untuk berlibur dan melepas penat dari hiruk-pikuk kota. \n\n'
    'Febrianti Mayori | 2241720248',
    softWrap: true,
  ),
);
```

### Langkah 2: Tambahkan variabel text section ke body
![alt text](/Week06/images/P3L2.png)

## Praktikum 4: Implementasi image section
### Langkah 1: Siapkan aset gambar

```dart
uses-material-design: true
  assets:
  - assets/images/coban_talun.png
```

### Langkah 2: Tambahkan gambar ke body

```dart
body: Column(
  children: [
    Image.asset(
      'images/coban_talun.png',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    ),
    titleSection,
    buttonSection,
    textSection,
  ],
),
```

### Langkah 3: Terakhir, ubah menjadi ListView

```dart
body: ListView(
  children: [
    Image.asset(
      'images/coban_talun.png',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    ),
    titleSection,
    buttonSection,
    textSection,
  ],
),
```

Hasil\
![alt text](/Week06/images/P4L3.png)

## Tugas Praktikum 1: basic_layout_flutter
![alt text](/Week06/images/TP1.png)

## Praktikum 5: Membangun Navigasi di Flutter
### Langkah 1: Siapkan project baru
Project belanja.
![alt text](/Week06/images/P5L1.png)

### Langkah 2: Mendefinisikan Route
Route HomePage:

```dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
```

Route ItemPage:

```dart
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
```

### Langkah 3: Lengkapi Kode di main.dart
```dart
import 'package:flutter/material.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
```

### Langkah 4: Membuat data model
```dart
class Item {
  String? name;
  int? price;

  Item({this.name, this.price});
}
```

### Langkah 5: Lengkapi kode di class HomePage
```dart
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(name: 'Sugar', price: 5000),
      Item(name: 'Salt', price: 2000),
    ];
      throw UnimplementedError();
  }
}
```

### Langkah 6: Membuat ListView dan itemBuilder
```dart
body: Container(
  margin: EdgeInsets.all(8),
  child: ListView.builder(
    padding: EdgeInsets.all(8),
    itemCount: items.length,
    itemBuilder: (context, index) {
      final Item item = items[index];
      return Card(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Row(children: [
            Expanded(child: Text(item.name ?? 'Unknown Item')),
            Expanded(
                child: Text(
              item.price.toString(),
              textAlign: TextAlign.end,
            ))
          ]),
        ),
      );
    },
  ),
)
```

Hasil\
![alt text](/Week06/images/P5L6.png)

### Langkah 7: Menambahkan aksi pada ListView
```dart
return Card(
  child: InkWell(
  onTap: () {
    Navigator.pushNamed(context, '/item');
  },
```
Terdapat exception saat mengklik salah satu item dalam daftar karena halaman target yang dituju belum memiliki widget body atau layout yang diimplementasikan, sehingga menyebabkan munculnya UnimplementedError.

Hasil\
![alt text](/Week06/images/P5L7.png)

## Tugas Praktikum 2:
1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan `Navigator`. Perbarui kode pada bagian `Navigator` menjadi seperti berikut.

    ```dart
    onTap: () {
      Navigator.pushNamed(context, '/item', arguments: item);
    },
    ```

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan `ModalRoute`. Tambahkan kode berikut pada blok fungsi build dalam halaman `ItemPage`. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya.

    ```dart
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    ```

    ```dart
    import 'package:belanja/models/item.dart';
    import 'package:flutter/material.dart';

    class ItemPage extends StatelessWidget {
      const ItemPage({super.key});

      @override
      Widget build(BuildContext context) {
        final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
        
        return Scaffold(
        appBar: AppBar(title: const Text('Item Details')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(itemArgs.name ?? 'Unknown Item'),
            ],
          ),
        ),
      );
      }
    }
    ```

    Hasil\
    ![alt text](/Week06/images/TP2-2.png)

3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi `GridView` seperti di aplikasi marketplace pada umumnya.
    * a. Menambahkan atribut di item.dart

      ```dart
      class Item {
        final String name;
        final int price;
        final String imgproduct;
        final int stok;
        final double rating;

        Item({
          required this.name,
          required this.price,
          required this.imgproduct,
          required this.stok,
          required this.rating,
        });
      }
      ```

    * b. Mengubah tampilan item_page menjadi `GridView`.

      ```dart
      import 'package:flutter/material.dart';
      import '../models/item.dart';

      class ItemPage extends StatelessWidget {
        const ItemPage({super.key});

        @override
        Widget build(BuildContext context) {
          final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

          return Scaffold(
            appBar: AppBar(
              title: const Text('Item Details'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    itemArgs.imgproduct,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        itemArgs.name,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      'Stock: ${itemArgs.stok}',
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Price: Rp${itemArgs.price}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < itemArgs.rating.round()
                              ? Icons.star
                              : Icons.star_border,
                          color: const Color.fromARGB(255, 50, 116, 52),
                          size: 20,
                        );
                      }),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${itemArgs.rating}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ]),
            ),
          );

          // TODO : Implement build
          // throw UnimplementedError();
        }
      }
      ```

    * c. Tambahan kode di home_page.dart

      ```dart
      final List<Item> items = [
      Item(
        name: 'Sugar',
        price: 5000,
        imgproduct: 'assets/images/sugar.jpg',
        stok: 8,
        rating: 4.5
        ),
      Item(
        name: 'Salt',
        price: 2000,
        imgproduct: 'assets/images/salt.jpg',
        stok: 12,
        rating: 4.7),
      ];
      ```

      Hasil\
      ![alt text](/Week06/images/TP2-3.png)
      ![alt text](/Week06/images/TP2-3(2).png)

4. Silakan implementasikan Hero widget pada aplikasi belanja Anda.
    * a. Tambahan kode home_page.dart

      ```dart
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            Hero(
              tag: item.imgproduct,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  item.imgproduct,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          const SizedBox(width: 16),
          Expanded(child: Text(item.name)),
          Expanded(
              child: Text(
            item.price.toString(),
            textAlign: TextAlign.end,
          ))
        ]),
      ),
      ```

      Hasil\
      ![alt text](/Week06/images/TP2-4.png)

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
    * Pada kode home_page terdapat widget yang dipisahkan untuk membentuk sebuah card pada setiap item yang ditampilkan.

      ```dart
      import 'package:flutter/material.dart';
      import 'package:belanja/models/item.dart';
      import 'package:belanja/widgets/footer.dart';

      class HomePage extends StatelessWidget {
        const HomePage({super.key});

        @override
        Widget build(BuildContext context) {
          final List<Item> items = [
            Item(
              name: 'Sugar',
              price: 5000,
              imgproduct: 'assets/images/sugar.jpg',
              stok: 8,
              rating: 4.5),
            Item(
              name: 'Salt',
              price: 2000,
              imgproduct: 'assets/images/salt.jpg',
              stok: 12,
              rating: 4.7),
          ];

          return Scaffold(
            appBar: AppBar(
              title: const Text('Belanja'),
            ),
            body: Container(
              margin: const EdgeInsets.all(8),
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemCard(item: item);
                },
              ),
            ),
            bottomNavigationBar: const Footer(),
          );
        }
      }

      class ItemCard extends StatelessWidget {
        final Item item;

        const ItemCard({Key? key, required this.item}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Hero(
                      tag: item.imgproduct,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          item.imgproduct,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(child: Text(item.name)),
                    Expanded(
                      child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      }
      ```

    * Pada kode item_page, widget dipisahkan untuk setiap bagian agar lebih terstruktur. Sebagai contoh, kelas RatingStars dipanggil di dalam kelas ItemDetailInfo.

      ```dart
      import 'package:flutter/material.dart';
      import 'package:belanja/models/item.dart';
      import 'package:belanja/widgets/footer.dart';

      class ItemPage extends StatelessWidget {
        const ItemPage({super.key});

        @override
        Widget build(BuildContext context) {
          final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

          return Scaffold(
            appBar: AppBar(
              title: const Text('Item Details'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ItemDetails(item: itemArgs),
            ),
            bottomNavigationBar: const Footer(),
          );

          // TODO : Implement build
          // throw UnimplementedError();
        }
      }

      class ItemDetails extends StatelessWidget {
        final Item item;

        const ItemDetails({super.key, required this.item});

        @override
        Widget build(BuildContext context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemDetailImage(imagePath: item.imgproduct),
              const SizedBox(height: 16),
              ItemDetailInfo(item: item),
              const SizedBox(height: 16),
            ],
          );
        }
      }

      class ItemDetailImage extends StatelessWidget {
        final String imagePath;

        const ItemDetailImage({super.key, required this.imagePath});

        @override
        Widget build(BuildContext context) {
          return Hero(
            tag: imagePath,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                imagePath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          );
        }
      }

      class ItemDetailInfo extends StatelessWidget {
        final Item item;

        const ItemDetailInfo({super.key, required this.item});

        @override
        Widget build(BuildContext context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      item.name,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    'Stock: ${item.stok}',
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Price: Rp${item.price}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              RatingStars(rating: item.rating),
            ],
          );
        }
      }

      class RatingStars extends StatelessWidget {
        final double rating;

        const RatingStars({Key? key, required this.rating}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Row(
            children: [
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < rating.round() ? Icons.star : Icons.star_border,
                    color: const Color.fromARGB(255, 50, 116, 52),
                    size: 20,
                  );
                }),
              ),
              SizedBox(width: 8),
              Text(
                '$rating',
                style: TextStyle(fontSize: 16),
              ),
            ],
          );
        }
      }
      ```

    * Membuat file footer.dart didalam folder widgets.

      ```dart
      import 'package:flutter/material.dart';

      class Footer extends StatelessWidget {
        const Footer({super.key});

        @override
        Widget build(BuildContext context) {
          return Container(
            color: Colors.grey[200],
            height: 50,
            child: const Center(
              child: Text(
                'Febrianti Mayori | 2241720248 | TI-3D',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          );
        }
      }
      ```

    * Pemanggilan footer pada home_page dan item_page didalam Scaffold.

      ```dart
      import 'package:belanja/widgets/footer.dart';

      return Scaffold(
        bottomNavigationBar: const Footer(),
      );
      ```

      Hasil\
      ![alt text](/Week06/images/TP2-5.png)
      ![alt text](/Week06/images/TP2-5(2).png)
    * Penggunaan `Hero` pada kedua halaman berbeda saling terhubung melalui penggunaan tag yang sama. Saat sebuah item diklik, gambar akan menampilkan animasi transisi di antara halaman tersebut.

6. Cobalah modifikasi menggunakan plugin go_router.
    * Menambahkan kode file pubspec.yaml

      ```dart
      dependencies:
        flutter:
          sdk: flutter
        go_router: ^14.3.0
      ```

    * Pada terminal lakukan perintah "flutter pub get"
    ![alt text](/Week06/images/TP2-6.png)

    * Modifikasi file main

      ```dart
      import 'package:belanja/models/item.dart';
      import 'package:flutter/material.dart';
      import 'package:belanja/pages/home_page.dart';
      import 'package:belanja/pages/item_page.dart';
      import 'package:go_router/go_router.dart';

      void main() {
        final GoRouter _router = GoRouter(
          routes: <RouteBase>[
            GoRoute(
                path: '/',
                builder: (BuildContext context, GoRouterState state) {
                  return const HomePage();
                },
                routes: <RouteBase>[
                  GoRoute(
                    path: 'item',
                    builder: (BuildContext context, GoRouterState state) {
                      final itemArgs = state.extra as Item;
                      return ItemPage(item: itemArgs);
                    },
                  ),
                ]),
          ],
        );

        runApp(MaterialApp.router(
          // initialRoute: '/',
          // routes: {
          //   '/': (context) => HomePage(),
          //   '/item': (context) => ItemPage(),
          // }
          routerConfig: _router,
        ));
      }
      ```

    * Modifikasi file home_page pada bagian route

      ```dart
      onTap: () {
        context.go('/item', extra: item);
      },
      ```

    * Modifikasi file item_page untuk penambahan parameter

      ```dart
      class ItemPage extends StatelessWidget {
        final Item item;

        const ItemPage({super.key, required this.item});

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Item Details'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ItemDetails(item: item),
            ),
            bottomNavigationBar: const Footer(),
          );

          // TODO : Implement build
          // throw UnimplementedError();
        }
      }
      ```

      Hasil\
    ![alt text](/Week06/images/TP2-6(2).png)
    ![alt text](/Week06/images/TP2-6(3).png)