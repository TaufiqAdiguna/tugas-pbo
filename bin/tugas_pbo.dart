void main() {
  // Daftar siswa dengan nilai mereka
  List<Map<String, dynamic>> siswa = [
    {'nama': 'Alice', 'nilai': 85},
    {'nama': 'Bob', 'nilai': 58},
    {'nama': 'Charlie', 'nilai': 95},
    {'nama': 'Dave', 'nilai': 40},
    {'nama': 'Eve', 'nilai': 76}
  ];

  // Operator: Menghitung total nilai semua siswa
  int totalNilai = 0;
  siswa.forEach((murid) {
    totalNilai += murid['nilai'] as int;
  });
  print('Total Nilai: $totalNilai');

  // Percabangan: Mengecek apakah total nilai lebih besar dari 300
  if (totalNilai > 300) {
    print('Total nilai lebih besar dari 300');
  } else {
    print('Total nilai 300 atau kurang');
  }

  // Perulangan: Melakukan iterasi pada daftar dan mencetak setiap siswa dan nilai mereka
  for (var murid in siswa) {
    print('Siswa: ${murid['nama']}, Nilai: ${murid['nilai']}');
  }

  // Parameter fungsi: Fungsi untuk menghitung rata-rata dari nilai siswa
  double hitungRataRata(List<Map<String, dynamic>> siswa) {
    int total = 0;
    for (var murid in siswa) {
      total += murid['nilai'] as int;
    }
    return total / siswa.length;
  }

  double rataRataNilai = hitungRataRata(siswa);
  print('Rata-rata Nilai: $rataRataNilai');

  // Nilai balikan fungsi: Fungsi yang mengembalikan fungsi untuk memeriksa kelulusan
  Function dapatkanPemeriksaKelulusan(int nilaiKelulusan) {
    return (int nilai) => nilai >= nilaiKelulusan;
  }

  var pemeriksaKelulusan = dapatkanPemeriksaKelulusan(60);

  // Fungsi anonim: Menggunakan fungsi anonim untuk mencetak hasil kelulusan setiap siswa
  siswa.forEach((murid) {
    int nilai = murid['nilai'] as int;
    String hasil = pemeriksaKelulusan(nilai) ? 'Lulus' : 'Tidak Lulus';
    print('${murid['nama']} ${hasil}');
  });

  // Closure: Fungsi yang mengakses variabel dari scope luarnya
  Function buatPembangkitID() {
    int id = 0;
    return () {
      id += 1;
      return id;
    };
  }

  var pembangkitID = buatPembangkitID();
  siswa.forEach((murid) {
    int idSiswa = pembangkitID();
    print('ID Siswa untuk ${murid['nama']}: $idSiswa');
});
}
