# Toko Izaka 🎭

# Tugas 7 PBP
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- Dalam Flutter, StatelessWidget dan StatefulWidget adalah dua jenis widget dasar yang digunakan untuk membangun antarmuka pengguna. StatelessWidget adalah widget yang tidak memiliki state yang bisa berubah. Artinya, sekali widget ini dibuat, tampilannya tidak akan berubah selama siklus hidup widget tersebut, kecuali jika widget ini dibuat ulang dari awal. Sementara StatefulWidget adalah widget yang memiliki state atau kondisi internal yang dapat berubah-ubah. Saat state-nya berubah, widget ini akan dibuat ulang (rebuild) agar perubahan tersebut tercermin dalam tampilan.
- Perbedaan mereka adalah StatelessWidget tidak memiliki status yang dapat berubah sementara StatefulWidget memiliki status yang bisa berubah, StatelessWidget digunakan untuk UI statis sementara StatefulWidget digunakan untuk UI dinamis, StatefulWidget memiliki metode lifecycle yang lebih kompleks, seperti initState, setState, dan dispose, sementara StatelessWidget hanya memiliki metode build.

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- MaterialApp : untuk membungkus seluruh aplikasi dan menyediakan tema dasar, skema warna, serta pengaturan navigasi.
- Scaffold : Memberikan struktur dasar halaman.
- AppBar : Menyediakan bagian atas halaman yang menampilkan judul aplikasi.
- Padding : Memberikan jarak di sekitar widget.
- Column : Menyusun widget di dalamnya secara vertikal.
- Row : Menyusun widget di dalamnya secara horizontal.
- SizedBox : Menyediakan ruang kosong dengan lebar atau tinggi tertentu.
- Text : Menampilkan teks pada layar.
- GridView.count : Menampilkan widget dalam bentuk grid dengan jumlah kolom yang ditentukan.
- Card : Menyediakan kotak dengan bayangan untuk tampilan konten yang bersifat informatif.
- MediaQuery : Menyediakan informasi tentang ukuran dan orientasi layar saat ini.
- InkWell : Menyediakan efek animasi “ripples” saat widget diklik, yang memberikan respons visual untuk interaksi pengguna.
- SnackBar : Menampilkan pesan sementara di bagian bawah layar untuk memberi umpan balik kepada pengguna.
- Icon : Menampilkan ikon yang diambil dari set ikon Material Design.
- Container : Menyediakan wadah yang fleksibel.
- Material : Memberikan gaya dan efek Material Design pada widget anaknya.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
- Fungsi setState() dalam Flutter digunakan di dalam StatefulWidget untuk memberitahukan framework bahwa ada perubahan pada state yang memerlukan pembaruan tampilan. Ketika setState() dipanggil, Flutter akan melakukan rebuild pada widget yang terkait, menampilkan versi terbaru dari tampilan sesuai perubahan yang terjadi pada variabel atau data di dalam state.
- Variable yang terdampak dari fungsi setState() adalah variable yang didefinisikan di dalam State dari StatefulWidget.

### Jelaskan perbedaan antara const dengan final.
1. Const
   - diinisialisasi pada waktu kompilasi.
   - const dapat digunakan untuk membuat objek konstan.
   - const cocok untuk nilai yang benar-benar konstan dan tidak berubah sama sekali.
2. Final
   - diinisialisasi pada waktu runtime.
   - final tidak dapat digunakan untuk membuat objek konstan.
   - final cocok untuk nilai yang mungkin baru diketahui saat runtime tetapi tidak boleh diubah setelah diinisialisasi.
  
### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
   - Menjalankan flutter create toko_izaka pada direktori lokal
   - Lakukan git init pada root folder dan lakukan add-commit-push proyek ke sebuah repositori baru di GitHub bernama toko-izaka-mobile
2. Membuat tiga tombol sederhana dengan ikon dan teks
   - Buatlah file baru bernama menu.dart pada direktori toko_izaka/lib. Lalu tambahkan kode ini :
   ```dart
   import 'package:flutter/material.dart';
   ```
   - Dari file main.dart, pindahkan (cut) kode baris ke-39 hingga akhir yang berisi kedua class ini (MyHomePage, _MyHomePageState) ke file menu.dart
   - 
   
