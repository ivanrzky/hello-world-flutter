import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LinearLayoutPage(),
    );
  }
}

class LinearLayoutPage extends StatelessWidget {
  const LinearLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Layout Scroll'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Header (kuning)
            Container(
              height: 150,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: const Text(
                'Header Section',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Bagian Menu (biru)
            Container(
              color: Colors.blue.shade50,
              padding: const EdgeInsets.all(8),
              child: Column(
                children: List.generate(
                  3,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 60,
                    color: Colors.blueAccent,
                    alignment: Alignment.center,
                    child: Text(
                      'Menu ${index + 1}',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),

            // Dua kolom bawah (hijau & abu)
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: const Text(
                      'Kiri',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.grey,
                    alignment: Alignment.center,
                    child: const Text(
                      'Kanan',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),

            // Banyak menu thumbnail di bawah
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: List.generate(
                  10, // jumlah thumbnail
                  (index) => Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        color: Colors.blueGrey,
                      ),
                      title: Text('Thumbnail Menu ${index + 1}'),
                      subtitle: const Text('Deskripsi singkat menu ini'),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
