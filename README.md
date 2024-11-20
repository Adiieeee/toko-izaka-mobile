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
   - Tambahkan line ini `import 'package:mental_health_tracker/menu.dart';` ke line pertama di main.dart
   - Pada berkas main.dart, hapus `const MyHomePage(title: 'Flutter Demo Home Page')` sehingga cukup menjadi `MyHomePage()`
   - Pada berkas menu.dart hapus semua isi dari class MyHomePage
   - Ubah ... extends StatefulWidget menjadi ... extends StatelessWidget pada class MyHomePage
   - Menambahkan MyHomePage({super.key}); sebagai constructor class MyHomePage.
   - Menghapus seluruh class class _MyHomePageState extends State<MyHomePage>
   - Menambahkan Widget build
     ```dart
     class MyHomePage extends StatelessWidget {
      MyHomePage({super.key});

      @override
      Widget build(BuildContext context) {
	    return Scaffold(
        ...
	    );
      }
     }
     ```
   - Pada berkas menu.dart, letakkan kode di bawah ini
     ```dart
     class ItemHomepage {
        final String name;
        final IconData icon;

        ItemHomepage(this.name, this.icon);
     }
     ```
   - buat list of ItemHomepage yang berisi tombol-tombol yang ingin kamu tambahkan pada class MyHomePage
     ```dart
     final List<ItemHomepage> items = [
         ItemHomepage("Lihat Mood", Icons.mood),
         ItemHomepage("Tambah Mood", Icons.add),
         ItemHomepage("Logout", Icons.logout),
     ];
     ```
   - buat class ItemCard untuk menampilkan tombol-tombol dan menampilkan snackbar yang berisi pesan "Kamu telah menekan tombol [nama button]"
     ```dart
     class ItemCard extends StatelessWidget {
        // Menampilkan kartu dengan ikon dan nama.

        final ItemHomepage item; 
  
        const ItemCard(this.item, {super.key}); 

        @override
        Widget build(BuildContext context) {
          return Material(
            // Menentukan warna latar belakang dari tema aplikasi.
            color: Theme.of(context).colorScheme.secondary,
            // Membuat sudut kartu melengkung.
            borderRadius: BorderRadius.circular(12),
      
            child: InkWell(
              // Aksi ketika kartu ditekan.
              onTap: () {
                // Menampilkan pesan SnackBar saat kartu ditekan.
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
                  );
              },
              // Container untuk menyimpan Icon dan Text
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Column(
                    // Menyusun ikon dan teks di tengah kartu.
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item.icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                      Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
  
      }
     ```

3. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
- pada menu.dart tambahkan field colors pada class ItemHomePage menjadi seperti ini
  ```dart
  class ItemHomepage {
     final String name;
     final IconData icon;
     final Color color;

     ItemHomepage(this.name, this.icon, this.color);
  }
  ```
- Pada List<ItemHomePage> items, tambahkan field color sesuai keinginan untuk color buttonnya
  ```dart
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.mood, Colors.blue),
    ItemHomepage("Tambah Produk", Icons.add, Colors.green),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];
  ```
- Pada Class ItemCard extend StatelessWidget tambahkan variable color pada fungsi Widget build pada bagian child: Container
  ```dart
  class ItemCard extends StatelessWidget {
     // Menampilkan kartu dengan ikon dan nama.

     final ItemHomepage item;

     const ItemCard(this.item, {super.key});

     @override
     Widget build(BuildContext context) {
       return Material(
         // Menentukan warna latar belakang dari tema aplikasi.
         color: Theme.of(context).colorScheme.secondary,
         // Membuat sudut kartu melengkung.
         borderRadius: BorderRadius.circular(12),

         child: InkWell(
           // Aksi ketika kartu ditekan.
           onTap: () {
             // Menampilkan pesan SnackBar saat kartu ditekan.
             ScaffoldMessenger.of(context)
               ..hideCurrentSnackBar()
               ..showSnackBar(
                 SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
               );
           },
           // Container untuk menyimpan Icon dan Text
           child: Container(
             color: item.color,
             padding: const EdgeInsets.all(8),
             child: Center(
               child: Column(
                 // Menyusun ikon dan teks di tengah kartu.
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(
                     item.icon,
                     color: Colors.white,
                     size: 30.0,
                   ),
                   const Padding(padding: EdgeInsets.all(3)),
                   Text(
                     item.name,
                     textAlign: TextAlign.center,
                     style: const TextStyle(color: Colors.white),
                   ),
                 ],
               ),
             ),
           ),
         ),
       );
     }
  
   }
  ```

4. Memunculkan Snackbar
- Hal ini sudah dilakukan saat menambahkan button


# Tugas 8 PBP
### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
- const digunakan untuk mendefinisikan nilai yang bersifat tetap (immutable) dan dapat dihitung pada waktu kompilasi (compile-time constant)
- keuntungan menggunakan const :
  1. Mengurangi beban render
  2. menghemat penggunaan memori
  3. membantu mencegah perubahan nilai yang tidak sengaja, yang bisa menyebabkan bug
- Gunakan const pada widget yang tidak berubah selama siklus hidup aplikasi, seperti teks statis, padding, margin, atau warna tetap atau ketika menggunakan nilai tetap seperti angka, string, Color, atau EdgeInsets, gunakan const untuk memastikan nilai tersebut tidak berubah.
- Jangan gunakan const pada widget yang memiliki nilai dinamis atau yang berubah seiring waktu.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
- Column digunakan untuk menata widget secara vertikal dari atas ke bawah sementara Row digunakan untuk menata widget secara horizontal dari kiri ke kanan.
- untuk column digunakan pada form entry item dimana saat kita memasukan data, letak inputnya menggunakan column dari atas kebawah
- untuk row digunakan untuk tombol lihat produk, tambah produk dan logout, letaknya dari kanan ke kiri

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
- pada tugas ini saya elemen input yang saya gunakan adalah TextFormField, elemen ini digunakan untuk menerima input teks dari pengguna. value dari TextFormFieldnya adalah strings dan integer. Untuk elemen flutter lainnya yang tidak digunakan adalah DropdownButtonFormField, Switch, DatePicker, dan Radio.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
- Cara mengatur tema di aplikasi Flutter ini adalah dengan dengan mendefinisikan skema warna menggunakan ThemeData dan ColorScheme dan menggunakan blackSwatch sebagai primarySwatch dalam ThemeData di main.dart

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
- Cara menangani navigasu dalam aplikasi adalah dengan menggunakan Navigator.push, Navigator.pushReplacement, Navigator.pop dan drawer. Navigator push berguna untuk berpindah ke halaman lain dengan kondisi halaman baru ditambahkan ke tumpukan stack sehingga ketika kembali, maka akan kembali ke halaman sebelumnya. Navigatoor push Replacement berguna untuk menggantikan halaman sekarang dengan halaman yang baru tanpa mempush halaman baru ke stack. Navigator pop berguna untuk mempop halaman sekarang dan kembali ke halaman sebelumnya di stack. drawer berguna sebagai navigator di samping untuk akses mudah ke berbagai pilihan fitur.



# Tugas 9 PBP
### Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
- Membuat model penting karena untuk memastikan data JSON mudah digunakan, konsisten, aman, skalabel, mudah diperbarui. Dengan model, pengelolaan data menjadi lebih terstruktur dan aplikasi lebih robust terhadap perubahan data API.
- Tidak membuat model terlebih dahulu tidak akan langsung menyebabkan error, tetapi dapat menimbulkan beberapa masalah serius dalam pengelolaan data JSON yang dapat mengarah pada bug atau kesalahan runtime

### Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
- Library http pada Dart adalah pustaka yang menyediakan fungsi untuk melakukan permintaan HTTP (HTTP requests) ke server, seperti mengambil data, mengirim data, atau berkomunikasi dengan API. Dalam konteks tugas ini, fungsi utama library http adalah untuk mengambil data JSON dari endpoint Django yang telah dideploy

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
- Fungsi utama CookieRequest adalah memungkinkan aplikasi mempertahankan sesi pengguna yang konsisten tanpa perlu mengirim ulang data otentikasi (seperti token atau username/password) pada setiap request.
- Instance ini perlu dibagikan ke semua komponen di aplikasi Flutter untuk memastikan konsistensi sesi, kemudahan pengelolaan cookies, pengalaman pengguna yang lancar.

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
- **Input Data di Frontend**. Pengguna memasukkan data melalui antarmuka pengguna (UI) di Flutter. Biasanya ini melibatkan form atau input field
- **Proses Validasi Data (Frontend)**. Setelah data diinput, aplikasi melakukan validasi untuk memastikan bahwa data yang dikirim memenuhi syarat
- **Mengirim Data ke Backend (HTTP POST Request)**. Setelah validasi, data dikirim ke server menggunakan HTTP POST request melalui library seperti http atau dio
- **Pemrosesan Data di Backend (Django)**. Data yang dikirim oleh Flutter diterima oleh backend (Django)
- **Data Dikirim Kembali ke Flutter**. Setelah data berhasil diproses, Django dapat mengirimkan respons ke Flutter, biasanya dalam format JSON
- **Mengambil dan Menampilkan Data di Flutter**. Setelah data disimpan, aplikasi dapat mengambilnya kembali menggunakan GET request dan menampilkannya di UI

### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.'
- **Mekanisme Register**
  1. Input Data di Flutter. Pengguna memasukkan data seperti nama, email, dan password melalui form.
  2. Kirim Data ke Django (POST Request). Data dikirim ke endpoint register di Django melalui HTTP POST request
  3. Django Memproses Registrasi. Data diterima di Django, diverifikasi, dan disimpan di database
- **Mekanisme Login**
  1. Input Data Login. Pengguna memasukkan email dan password melalui Flutter
  2. Kirim Data ke Django (POST Request). Flutter mengirim data login menggunakan HTTP POST request
  3. Django Memproses Login. Django memverifikasi kredensial menggunakan autentikasi bawaan
- **Menampilkan Menu Setelah Login**
  1. Simpan Token atau Cookie di Flutter. Token atau cookie dari Django disimpan secara lokal di Flutter
  2. Ambil Data Menu dari Server. Flutter menggunakan token/cookie untuk melakukan GET request ke endpoint yang membutuhkan autentikasi
- **Mekanisme Logout**
  1. Kirim Permintaan Logout ke Django. Flutter mengirim POST request ke endpoint logout
  2. Django Menghapus Sesi. Django menghapus data sesi

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!
1. Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
- Projek Django saya sudah berjalan dengan sesuai

2. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
- Buatlah django-app bernama authentication pada project Django
- Tambahkan authentication ke INSTALLED_APPS pada main project settings.pyJalankan perintah pip install django-cors-headers untuk menginstal library yang dibutuhkan. Jangan lupa untuk menyalakan virtual environment Python terlebih dahulu. Jangan lupa juga untuk menambahkan django-cors-headers ke requirements.txt.
- Tambahkan corsheaders ke INSTALLED_APPS pada main project settings.py
- Tambahkan corsheaders.middleware.CorsMiddleware ke MIDDLEWARE pada main project settings.py
- Tambahkan beberapa variabel berikut ini pada main project settings.py
  ```python
  ...
  CORS_ALLOW_ALL_ORIGINS = True
  CORS_ALLOW_CREDENTIALS = True
  CSRF_COOKIE_SECURE = True
  SESSION_COOKIE_SECURE = True
  CSRF_COOKIE_SAMESITE = 'None'
  SESSION_COOKIE_SAMESITE = 'None'
  ...
  ```
- Untuk keperluan integrasi ke Django dari emulator Android, tambahkan 10.0.2.2 pada ALLOWED_HOSTS di berkas settings.py
  ```python
  ALLOWED_HOSTS = [..., ..., "10.0.2.2"]
  ```

3. Membuat halaman login pada proyek tugas Flutter.  
- Buatlah sebuah metode view untuk login pada authentication/views.py
  ```python
  from django.contrib.auth import authenticate, login as auth_login
  from django.http import JsonResponse
  from django.views.decorators.csrf import csrf_exempt

  @csrf_exempt
  def login(request):
      username = request.POST['username']
      password = request.POST['password']
      user = authenticate(username=username, password=password)
      if user is not None:
          if user.is_active:
              auth_login(request, user)
              # Status login sukses.
              return JsonResponse({
                  "username": user.username,
                  "status": True,
                  "message": "Login sukses!"
                  # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
              }, status=200)
          else:
              return JsonResponse({
                  "status": False,
                  "message": "Login gagal, akun dinonaktifkan."
              }, status=401)

      else:
          return JsonResponse({
              "status": False,
              "message": "Login gagal, periksa kembali email atau kata sandi."
          }, status=401)
    ```
- Buat file urls.py pada folder authentication dan tambahkan URL routing terhadap fungsi yang sudah dibuat dengan endpoint login/
  ```python
  from django.urls import path
  from authentication.views import login

  app_name = 'authentication'

  urlpatterns = [
      path('login/', login, name='login'),
  ]
  ```
- tambahkan path('auth/', include('authentication.urls')), pada file toko_izaka/urls.py
- Instal package pada direktori root dari proyek Flutter
  ```
  flutter pub add provider
  flutter pub add pbp_django_auth
  ```
- Untuk menggunakan package tersebut, kamu perlu memodifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider. Ubahlah main.dart menjadi:
  ```flutter
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Mental Health Tracker',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
          ).copyWith(secondary: Colors.deepPurple[400]),
        ),
        home: MyHomePage(),
      ),
    );
  }
  ```
- Jangan lupa untuk menambahkan import 'package:pbp_django_auth/pbp_django_auth.dart'; dan import 'package:provider/provider.dart';
- Buatlah berkas baru pada folder screens dengan nama login.dart
```
import 'package:mental_health_tracker/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
// TODO: Import halaman RegisterPage jika sudah dibuat

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(secondary: Colors.deepPurple[400]),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password = _passwordController.text;

                      // Cek kredensial
                      // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                      // Untuk menyambungkan Android emulator dengan Django pada localhost,
                      // gunakan URL http://10.0.2.2/
                      final response = await request
                          .login("http://[APP_URL_KAMU]/auth/login/", {
                        'username': username,
                        'password': password,
                      });

                      if (request.loggedIn) {
                        String message = response['message'];
                        String uname = response['username'];
                        if (context.mounted) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                  content:
                                      Text("$message Selamat datang, $uname.")),
                            );
                        }
                      } else {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Login Gagal'),
                              content: Text(response['message']),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 36.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      'Don\'t have an account? Register',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
- Pada file main.dart, pada Widget MaterialApp(...), ubah home: MyHomePage() menjadi home: const LoginPage()

4. Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
- modifikasi modul authentication pada proyek Django yang kamu kerjakan sebelumnya. Tambahkan metode view berikut pada authentication/views.py yang sudah kamu buat
```python
from django.contrib.auth.models import User
import json

...

@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)
        
        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)
        
        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)
```
- Tambahkan path baru pada authentication/urls.py
```python
from authentication.views import login, register  # Tambahkan register di baris ini
...
path('register/', register, name='register'),
```
- Pada proyek Flutter, buatlah berkas baru pada folder screens dengan nama register.dart.
```
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mental_health_tracker/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password1 = _passwordController.text;
                      String password2 = _confirmPasswordController.text;

                      // Cek kredensial
                      // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                      // Untuk menyambungkan Android emulator dengan Django pada localhost,
                      // gunakan URL http://10.0.2.2/
                      final response = await request.postJson(
                          "http://[APP_URL_KAMU]/auth/register/",
                          jsonEncode({
                            "username": username,
                            "password1": password1,
                            "password2": password2,
                          }));
                      if (context.mounted) {
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully registered!'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Failed to register!'),
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

5. Membuat model kustom sesuai dengan proyek aplikasi Django.
- Bukalah endpoint JSON
- Salinlah data JSON dan buka situs web Quicktype.
- Pada situs web Quicktype, ubahlah setup name menjadi ItemEntry, source type menjadi JSON, dan language menjadi Dart
- Tempel data JSON yang telah disalin sebelumnya ke dalam textbox yang tersedia pada Quicktype.
- Klik pilihan Copy Code pada Quicktype.
- buka kembali proyek Flutter dan buatlah folder baru models/ pada subdirektori lib/. Buatlah file baru pada folder tersebut dengan nama item_entry.dart, dan tempel kode yang sudah disalin dari Quicktype.

### Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
