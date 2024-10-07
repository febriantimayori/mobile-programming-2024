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