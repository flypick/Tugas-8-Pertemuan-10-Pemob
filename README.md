Nama : Audi Makrufianto Afetama
NIM : H1D023037
Shift : C

-- penjelasan code--

1. app/Config/Database.php : Pada array $default, kita mengatur hostname ke localhost, username ke root, dan database ke       toko_api. Ini berfungsi agar framework CodeIgniter dapat      membaca dan menulis data ke database MySQL yang telah dibuat di phpMyAdmin.
2. app/Config/Routes.php : $routes->post('/registrasi'): Jalur untuk mendaftarkan user, $routes->post('/login'): Jalur untuk   autentikasi user, $routes->group('produk'): Grup jalur yang berisi metode GET (list/detail), POST (create), PUT (update),  dan DELETE (hapus) untuk pengelolaan produk.
3. app/Controllers/RestfulController.php : File ini mewarisi ResourceController milik CI4. Di dalamnya dibuat fungsi kustom    responseHasil() yang menstandarisasi format respon JSON (code, status, data) agar seragam di seluruh aplikasi.
4. app/Models/MMember.php & MLogin.php : MMember: Mengizinkan manipulasi data pada kolom nama, email, dan password, sedangkan
MLogin: Berfungsi menyimpan token autentikasi yang dihasilkan saat login ke dalam tabel member_token.
5. app/Models/MProduk.php : Mengatur koneksi ke tabel produk dan mengizinkan manipulasi data (CRUD) pada kolom kode_produk,    nama_produk, dan harga.
6. app/Controllers/RegistrasiController.php : Memeriksa ketersediaan email di database. Jika ada, membandingkan password input dengan password di database. Jika cocok, sistem membuat string acak (Token), menyimpannya ke tabel member_token, dan mengirimkan token tersebut ke klien.
7. app/Controllers/ProdukController.php : create(): Menangkap input data produk dan menyimpannya (Insert), list(): Mengambil seluruh data produk (Select All), detail($id): Mengambil satu data produk berdasarkan ID, ubah($id): Mengupdate data produk spesifik, hapus($id): Menghapus data produk berdasarkan ID.
8. lib/main.dart : Menginisialisasi MaterialApp. Properti home diatur ke LoginPage, sehingga saat aplikasi dibuka, halaman pertama yang muncul adalah halaman Login.
9. lib/model/produk.dart : Kelas ini mendefinisikan atribut produk (id, kode, nama, harga). Terdapat factory method fromJson yang bertugas mengonversi data mentah JSON dari API menjadi objek Dart agar bisa ditampilkan di UI Flutter.
10. lib/ui/login_page.dart : Berisi form input email dan password dengan validasi (tidak boleh kosong). Terdapat tombol "Login" untuk memproses masuk, dan teks menu "Registrasi" yang menggunakan Navigator.push untuk mengarahkan pengguna ke halaman pendaftaran.
11. lib/ui/registrasi_page.dart : Berisi form lengkap (Nama, Email, Password, Konfirmasi Password). Kode ini melakukan validasi ketat, seperti format email harus benar (menggunakan Regex) dan password konfirmasi harus sama dengan password utama.
12. lib/ui/produk_page.dart : Menampilkan daftar produk menggunakan ListView, Judul AppBar diset menjadi "List Produk Audi", Setiap item produk dibungkus GestureDetector, jika diklik akan mengarahkan ke halaman Detail.
13. lib/ui/produk_detail.dart : Menampilkan rincian (Kode, Nama, Harga) dari produk yang dipilih, Judul AppBar diset menjadi "Detail Produk Audi", Memiliki tombol Edit (navigasi ke Form Produk dengan membawa data) dan tombol Delete (memunculkan Dialog Konfirmasi penghapusan).
14. lib/ui/produk_form.dart : Di fungsi initState, sistem mengecek apakah ada data produk yang dikirim, Jika ada data, judul menjadi "UBAH PRODUK AUDI" dan kolom terisi otomatis (Mode Edit), Jika tidak ada data, judul menjadi "TAMBAH PRODUK AUDI" dan kolom kosong (Mode Tambah).

--bukti screenshoot--
<img width="1920" height="1020" alt="Screenshot 2025-11-24 211038" src="https://github.com/user-attachments/assets/e1aea45c-02b1-42b9-8cb8-bbaf948e8075" />
<img width="1920" height="1020" alt="Screenshot 2025-11-24 211030" src="https://github.com/user-attachments/assets/2120129a-ca70-4057-94d6-c917bb3dd7e5" />
<img width="1920" height="1020" alt="Screenshot 2025-11-24 211025" src="https://github.com/user-attachments/assets/f2777b5b-d54c-48ff-877e-5a72fcae3e84" />
<img width="1920" height="1020" alt="Screenshot 2025-11-24 211020" src="https://github.com/user-attachments/assets/0ffe8f7f-b42f-4fcb-9753-96dfb94f9815" />
