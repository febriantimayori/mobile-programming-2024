void main() {
    String nama = 'Febrianti Mayori';
    String nim = '2241720248';

    // Fungsi untuk mengecek bilangan prima menggunakan loop while
    bool isPrima(int bilangan) {
        if (bilangan < 2) return false; // Bilangan kurang dari 2 bukan bilangan prima
        int i = 2;
        while (i * i <= bilangan) { // Hanya perlu memeriksa hingga akar dari bilangan
            if (bilangan % i == 0) {
                return false; // Jika habis dibagi dengan bilangan lain, maka bukan bilangan prima
            }
            i++;
        }
    return true; // Jika tidak ada pembagi lain, maka bilangan prima
  }

    // Looping untuk mengecek bilangan prima dari 0 hingga 201
    int angka = 0;
    do {
        if(isPrima(angka)) {
            print('$angka adalah bilangan prima.');
            print('Nama: $nama, NIM: $nim');
        }
        angka++;
    } while (angka <= 201);
}