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