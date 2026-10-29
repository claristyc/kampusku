import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kampusku/app.dart';

void main() {
  testWidgets('Pengujian tampilan utama Kampusku', (WidgetTester tester) async {
    // 1. Pastikan environment testing siap
    TestWidgetsFlutterBinding.ensureInitialized();

    // 2. Inisialisasi format tanggal Indonesia
    await initializeDateFormatting('id_ID', null);

    // 3. Render aplikasi dan tunggu hingga proses render selesai
    await tester.pumpWidget(const KampusKuApp());
    await tester.pumpAndSettle();

    // 4. Verifikasi teks Kampusku di AppBar
    expect(find.text('Kampusku'), findsOneWidget);
  });
}