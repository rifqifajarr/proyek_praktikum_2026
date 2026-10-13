import 'package:flutter/material.dart';
import 'package:proyek_praktikum_2026/core/theme/app_colors.dart';
import 'package:proyek_praktikum_2026/core/theme/app_text_style.dart';
import 'package:proyek_praktikum_2026/features/detail/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> items = const [
    {'title': 'Laporan Bulanan', 'desc': 'Laporan keuangan bulan Januari'},
    {'title': 'Meeting Klien', 'desc': 'Jadwal meeting dengan PT Sukses'},
    {'title': 'Review Desain', 'desc': 'Cek hasil desain UI/UX terbaru'},
    {'title': 'Update Aplikasi', 'desc': 'Rilis versi 1.0.2 ke Play Store'},
    {'title': 'Makan Siang', 'desc': 'Makan siang bersama tim divisi'},
    {'title': 'Beli Kopi', 'desc': 'Stok kopi di pantry sudah habis'},
    {'title': 'Cek Server', 'desc': 'Maintenance server mingguan'},
    {'title': 'Kirim Email', 'desc': 'Kirim email penawaran ke vendor'},
    {'title': 'Training Karyawan', 'desc': 'Sesi training tim engineer baru'},
    {'title': 'Audit Internal', 'desc': 'Persiapan dokumen audit kuartal 1'},
    {'title': 'Beli Domain', 'desc': 'Perpanjang domain website utama'},
    {
      'title': 'Interview Kandidat',
      'desc': 'Wawancara posisi Mobile Developer',
    },
    {'title': 'Backup Database', 'desc': 'Backup rutin database produksi'},
    {'title': 'Optimasi SEO', 'desc': 'Cek performa keyword bulan ini'},
    {'title': 'Survey Pengguna', 'desc': 'Kumpulkan feedback fitur baru'},
    {'title': 'Pesan Tiket', 'desc': 'Tiket pesawat untuk dinas luar kota'},
    {'title': 'Bayar Tagihan', 'desc': 'Tagihan internet dan listrik kantor'},
    {'title': 'Konten Sosmed', 'desc': 'Draft postingan Instagram minggu ini'},
    {'title': 'Bug Fixing', 'desc': 'Perbaiki issue login pada iOS'},
    {'title': 'Team Building', 'desc': 'Acara kumpul rutin akhir bulan'},
    {'title': 'Review KPI', 'desc': 'Evaluasi performa tim bulan lalu'},
    {'title': 'Order ATK', 'desc': 'Beli kertas, tinta, dan spidol'},
    {'title': 'Sync Data', 'desc': 'Sinkronisasi data ke cloud storage'},
    {'title': 'Update Dokumen', 'desc': 'Revisi dokumen API untuk backend'},
    {
      'title': 'Pulang Tepat Waktu',
      'desc': 'Jangan lupa istirahat yang cukup!',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: AppTextStyle.headingM.bold),
        backgroundColor: AppColors.bluePrimary200,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _listItem(
              title: item['title'] ?? '',
              desc: item['desc'] ?? '',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: item['title'] ?? '',
                      desc: item['desc'] ?? '',
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _listItem({
    required String title,
    required String desc,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.blueBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppTextStyle.headingM.semiBold),
            const SizedBox(height: 4),
            Text(desc, style: AppTextStyle.textM),
          ],
        ),
      ),
    );
  }
}
