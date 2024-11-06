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

###
