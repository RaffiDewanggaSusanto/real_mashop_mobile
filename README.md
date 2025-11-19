# Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget tree adalah struktur hirarkis yang tersusun dari widget-widget di dalam aplikasi flutter. Setiap widget dapat memiliki satu atau lebih widget anak. Parent adalah wadah untuk widget anak-anaknya. Parent akan mengatur tata letak dan perilaku dari childnya dan child hanya bisa tampil di dalam parentnya saja.

# Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
MaterialApp : Widget yang digunakan sebagai root untuk theme, navigationa, dan style dari material yang digunakan.
Scaffold : Untuk struktur dari halaman.
AppBar : Untuk bagian header di atas halaman aplikasi (untuk judul).
Text : Untuk menampilkan teks.
Padding : Untuk memberikan jarak di sekitar widget.
Column : Untuk menyusun widget-widget secarar vertical.
Row : Untuk menyusun widget-widget secarar horizontal.
SizedBox : Untuk memberikan jarak antar widget.
Card : Untuk memberikan tampilan kotak.
Container : Sebagai container widget lain dan bia untuk mengubah ukuran, padding, atau warna background.
Grid.View.count : Untuk menampilkan item-item dalam bentuk grid.
Icon : Untuk menampilkan simbol icon yang dipilih Material Icons.
Material : Untuk memberikan tampilan sesuai dengan Material Design.
InkWell : Untuk memberikan ripple effect pada widget saat diclick.
SnackBar : Untuk menampilkan notifikasi di bawah halaman.
Center : Untuk menaruh widget di tengah.
Theme.of(context) : Untuk mengakses data theme yang digunakan dari MaterialApp.


# Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Widget MaterialApp adalah widget yang digunakan untuk mengatur theme, navigation, routing, dan tampilan dasar dari aplikasi yang berbasis Material Design. MaterialApp bisa digunakan untuk menentukan global theme, membuat sistem navigation antar halaman, menjadi root widget agar widget-widget di bawahnya bisa menggunakan komponen dari Material Design.

# Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget :
- Tidak bisa diubah (immutable)
- Nilai datanya tetap (tidak berubah)
- Untuk menampilkan UI yang statis
- Contohnya adalah text, icon, dan layout

StatefulWidget :
- Bisa diubah (mutable)
- Nilai datanya bisa berubah
- Untuk menampilkan UI yang dinamis
- Contohnya form input, counter, animation, toggle

StatelessWidgeet digunakan jika UInya tidak menggunakan nilai data yang berubah-ubah.
StatefulWidget digunakan jika UInya menggunakan nilai data yang berubah-ubah.

# Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext adalah objek yang digunakan untuk menyimpan informasi dari lokasi widget di dalam widget tree. Setiap widget akan memiliki BuildContext masing-masing untuk Flutter agar tahu di mana posisi widget tersebut berada. BuildContext ini penting karena dengan BuildContext memungkinkan kita untuk mengakses theme, navigation, atau parent dari widget.

# Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot Reload digunakan untuk memperbarui kode di layar sedangkan Hot Restart digunakan untuk merestart seluruh aplikasi. Hot reload dapat digunakan jika ada perubahan design dari UI sedangkan hot restart dapat digunakan jika ada perubahan logic pada code.
 
# Jelaskan bagaimana kamu menambahkan navigasi untuk berpindah antar layar di aplikasi Flutter.
Untuk menambahkan navigation untuk berpindah antar layar di aplikasi Flutter misalnya adalah dengan membuat dua halaman HomePage dan DetailPage lalu digunakan Navigator.push() untuk pindah ke halaman lain dan Navigator.pop() untuk kembali.

# Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
- Navigator.push() digunakan untuk menambahkan route baru ke atas stack agar pengguna bisa kembali dengan menekan tombol back. Navigator.push() cocok digunakan untuk membuka halaman form tambah produk agar setelah membuat produk baru kemudian bisa kembali ke home.
- Navigator.pushReplacement() dgunakan untuk mengganti route saat ini dengan route baru, halaman lama akan dihapus dari stack sehingga tidak bisa kembali lagi. Cocok digunakan untuk alur login dimana jika sudah logout maka akan kembali ke halaman login dan tidak bisa kembali ke home atau setelah melakukan login maka tidak bisa kembali ke halaman login lagi.

# Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
- Scaffold digunakan sebagai penyedia kerangka standar seperti AppBar, body Drawer, dan FloatingActionButton, sehingga seluruh halaman konsisten.
- AppBar digunakan untuk menyimpan judul halaman dan icon-icon yang digunakan. Setiap halaman menggunakan AppBar dengan warna yang sama dan icon-icon yang sesuai.
- Drawer digunakan untuk panel samping yang bisa digeser dari sisi kiri atau kanan untuk navigasi aplikasi. Dengan drawer pengguna bisa pindah halaman kapan saja dan navigasi aplikasi menjadi konsisten.

# Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
- Padding: memberikan ruang di sekitar widget agar UI tidak mepet ke tepi layar, lebih rapih, dan lebih mudah dibaca. Contoh penggunaannya adalah pada kolom pengisian di form yang menggunakan padding agar lebih rapih.
- SingleChildScrollView: agar konten di layar bisa discroll secara vertikal jika melebihi tinggi layar. Contoh penggunaannya adalah pada halaman form dimana halaman tersebut bisa discroll jika panjang content lebih panjang dari panjang halaman.
- ListView: untuk menampilkan daftar elemen panjang dan memiliki fitur scroll bawaan. Contoh penggunaannya adalah pada left drawer digunakan untuk memunculkan tile halaman utama dan tambah produk.

# Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Menentukan warna-warna yang akan digunakan lalu menambahkan "color: Colors.white" atau "Color(0xFFf0b414)" pada bagian-bagian yang ingin diubah warnanya sesuai dengan kebutuhan. 

# Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
Dalam Flutter, biasanya data JSON dari API berada dalam bentuk mentah. Pengubahan menjadi model diperlukan untuk:
- Type Safety: Dengan model, jika API mengirimkan data yang salah (misalnya string padahal harusnya integer) error akan terdeteksi.
- Null Safety: Model harus didefinisikan mana yang boleh kosong dan mana yang wajib ada.
- Maintainability dan Refactoring: Kalau ada perubahan nama field di backend, dengan model maka hanya perlu mengubahnya di file model saja tanpa perlu mencari field tersebut.
- IDE Support: Dengan model, IDE akan mengetahui properti apa saja yang dimiliki objek tersebut.

Konsekuensi jika langsung memetakan tanpa model adalah kode menjadi hardcoded, sulit dibaca, sulit didebug, tidak ada validasi, dan ada risiko runtime error.

# Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
http:
- Fungsi: Library standar dan dasar untuk melakukan HTTP requests (GET, POST, PUT, DELETE) di Flutter.
- Sifat: Stateless. Setiap request dianggap baru dan independen, tidak secara otomatis menyimpan atau mengirimkan cookies atau session ID dari request sebelumnya.
- Peran: Digunakan untuk komunikasi data mentah jika tidak membutuhkan sesi login, atau jika cookie dibuat sendiri secara manual.

CookieRequest:
- Fungsi: Sebuah wrapper di atas library http yang didesain untuk menangani session management.
- Sifat: Stateful terkait cookie.
- Peran: Menyimpan Session Cookie yang diberikan Django setelah login, secara otomatis menyertakan cookie tersebut di header setiap request berikutnya (GET/POST) agar Django tahu siapa yang sedang melakukan request tanpa perlu login ulang setiap kali menekan tombol, dan menangani CSRF token jika diperlukan oleh Django.

# Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest menyimpan kunci sesi login. Jika tidak dibagikan, jika dibuat instance CookieRequest baru di setiap halaman (misal: new CookieRequest() di Halaman Login, lalu new CookieRequest() lagi di Halaman Home), maka instance di Halaman Home masih kosong. Aplikasi akan menganggap user belum login karena cookie yang didapat saat login tertinggal di instance halaman sebelumnya.

# Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
Tujuan utamanya adalah agar Flutter bisa berkomunikasi dengan Django di Localhost komputer.
- 10.0.2.2 pada ALLOWED_HOSTS: Untuk mengakses localhost komputer tempat server Django berjalan, Android menyediakan alias IP khusus: 10.0.2.2. Django secara default menolak request dari host yang tidak dikenali demi keamanan. Maka IP harus diizinkan agar Django mau merespons request dari emulator. Kalau salah konfigurasi Django akan melempar error DisallowedHost (Bad Request 400).
- CORS (Cross-Origin Resource Sharing): Browser memblokir request dari satu domain/port (Flutter Web) ke domain/port lain (Django) demi keamanan. CORS mengizinkan browser untuk mempercayai server Django. Kalau salah konfigurasi Flutter Web akan gagal fetch data dengan error XMLHttpRequest error.
- SameSite/Cookie Settings: Agar session cookie bisa disimpan dan dikirim kembali antar domain/port yang berbeda, cookie memiliki aturan keamanan yang mengharuskan pengaturan spesifik seperti SameSite=None atau Lax tergantung konteks environment dev/prod.
-  Akses internet: Android memiliki sistem keamanan sandbox. Aplikasi secara default tidak boleh mengakses internet dan harus secara eksplisit meminta izin agar OS mengizinkan aplikasi membuka koneksi jaringan. Kalau salah konfigurasi aplikasi Flutter melempar error SocketException: Permission denied.

# Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
- Input di Flutter
User mengisi form di ProductsFormPage (lib/screens/productslist_form.dart):
_name, _price, _description, _category, _thumbnail, _isFeatured, _rating.
Field divalidasi dengan TextFormField.validator.
- Kirim ke Django
Saat tombol Save ditekan dan validasi lolos:
CookieRequest mengirim POST JSON ke endpoint Django create-flutter/, menyertakan cookie sesi jika user login.
- Proses di Django
View Django:
Membaca body JSON.
Validasi data (misalnya tidak kosong, tipe benar).
Simpan ke database (Model produk).
Kembalikan JSON seperti:
- Respons diproses Flutter
Di flutter user kembali ke menu utama
- Menampilkan data kembali di Flutter
Di ProductsEntryListPage (lib/screens/products_entry_list.dart):
Fungsi fetchProducts(request):
final response = await request.get('http://.../json-by-user/');
Konversi response (list JSON) ke list ProductsEntry:
listProducts.add(ProductsEntry.fromJson(d));
FutureBuilder menunggu fetchProducts, lalu:
Menggunakan ListView.builder untuk membuat ProductsEntryCard untuk setiap produk.
Saat card ditekan, navigasi ke ProductsDetailPage untuk melihat detail satu produk.

# Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Register
-User mengisi username dan password di RegisterPage (lib/screens/register.dart).
- Flutter mengirim POST JSON ke:
request.postJson(
  "http://.../auth/register/",
  jsonEncode({
    "username": username,
    "password1": password1,
    "password2": password2,
  }),
);
- Django:
Validasi password, cek username unik.
Jika valid, membuat user baru dan mengembalikan JSON status: 'success'.
- Flutter:
Jika sukses, tampilkan SnackBar "Successfully registered!" dan Navigator.pushReplacement ke LoginPage.

Login
- User mengisi username dan password di LoginPage (lib/screens/login.dart).
- Flutter memanggil:
final response = await request.login(
  "http://.../auth/login/",
  {'username': username, 'password': password},
);
- Django:
Autentikasi kredensial.
Jika benar:
Membuat sesi (sessionid) dan mengirim cookie sesi ke client.
Mengirim JSON seperti: {'status': true, 'message': 'Login success', 'username': '...'}.
- CookieRequest
Menyimpan cookie sesi di instance tersebut.
request.loggedIn menjadi true.
- Flutter LoginPage
if (request.loggedIn) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => MyHomePage()),
  );
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("$message Welcome, $uname.")),
  );
}
- Setelah itu, semua request lewat CookieRequest akan membawa cookie sesi yang sama, sehingga Django tahu bahwa user yang sama sedang melakukan request (misalnya json-by-user/ mengembalikan hanya produk milik user itu).

Logout
- User menekan tombol Logout.
- Flutter memanggil:
final response = await request.logout("http://.../auth/logout/");
- Django:
Menghapus sesi (sessionid) di server.
Mengirim JSON: {'status': true, 'message': 'Logged out', 'username': '...'}.
- CookieRequest:
Menghapus cookie sesi lokal dan menandai loggedIn = false.
- Flutter:
Menampilkan SnackBar "$message See you again, $uname.".
Navigator.pushAndRemoveUntil ke LoginPage (menghapus semua route sebelumnya supaya tidak bisa kembali ke menu dengan tombol back).

# Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- Pertama saya membuat app django baru bernama authentication di folder aplikasi django sebelumnya dan menginstall library yang dibutuhkan yaitu cors headers.
- Lalu saya menambahkan beberapa variabel ke settings.py dan menambahkan "10.0.2.2" ke installed apps.
- Kemudian saya membuat method baru di view di authentication untuk melakukan login dan membuat file urls.py untuk ditambahkan routing untuk fungsi di view tadi juga tambahkan routing di urls.py project utama.
- Di flutter modifikasi main.dart, lalu buat file login.dart dan menambahkan method baru lagi di views.py authentication yaitu register.
- Lalu buat juga file register.dart dan panggil di file login.dart untuk dinavigasi dari halaman login.
- Lalu saya mengambil data JSON dari situs web aplikasi project django dan mengubahnya menjadi languange dart. Ada beberapa perubahan dari data yang harus saya lakukan karena terjadi error saat memasukkan data secara langsung. Lalu masukkan data tersebut ke file baru bernama products_entry.dart.
- Untuk data ini kemudian perlu dilakukan penyesuaian pada project django dan flutter pada model agar classnya sama (nama, harga, description, dll). 
- Lalu saya memberikan akses internet pada aplikasi.
- Di view.py project ditambahkan method proxy image untuk mengintegrasikan data.
- Di flutter dibuat products_entry_card.dart dan products_enrty_list.dart serta tambahkan products_entry_list.dart ke left_drawer.dart. Lalu modifikasi tombol see sport products agar mengarahkan ke halaman productsentrylistpage.
- Lalu dibuat file baru products_detail.dart yang dapat dinavigasi melalui news_entry_list.dart.
- Di views.py project tambahkan method create_products_flutter. Di flutter newslist_form.dart dan cookierequest dihubungkan dan mengubah perintah onpressed. Semua jenis data pada code saya ubah untuk menyesuaikan dengan keperluan aplikasi.
- Lalu di views.py authentication ditambahkan method untuk logout dan dipanggil di flutter.
- Agar user hanya bisa melihat product yang mereka buat, maka ditambahkan show_json_by_user yang kemudian di flutter diubah data yang diambil dari json menjadi json-by-user.
- Terakhir saya melakukan personalisasi tampilan aplikasi agar lebih menarik.