import 'package:flutter/material.dart';

const appTitle = 'Naruto The Movie';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image.network(
          'https://yt3.ggpht.com/a/AGF-l7_ZXs_6VDVjagRgyKquirPyA1gniePlB_IT=s900-mo-c-c0xffffffff-rj-k-no',
          width: 600,
          height: 120,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(32),
          child: Row(children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Masahi Kiyoto',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Pengorbanan Ayah',
                    style: TextStyle(
                      color: Colors.blueGrey,
                    )),
              ],
            )),
            const Icon(Icons.star, color: Colors.red),
            const Text('41')
          ]),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(children: const [Icon(Icons.phone), Text('CALL')]),
          Column(children: const [Icon(Icons.near_me), Text('ROUTE')]),
          Column(children: const [Icon(Icons.share), Text('SHARE')]),
        ]),
        const SizedBox(height: 30),
        const Expanded(
          child: SingleChildScrollView(
            child: Text(
                "Kiyoto adalah hokage keempat dari desa konoha"
                "Ia meninggal ketika menyelamatkan anaknya dari amukan rubah berekor sembilan"
                "Dibalik kejadian nahas tersebut, ternyata kekacauan yang terjadi ada peran Obito dibelakangnya"
                "ada web server yang sudah kita buat, ia memberikan respons dengan format dokumen HTML. Dokumen ini digunakan oleh browser dalam menampilkan website. Anda bisa melihat ini ketika mengakses web server melalui browser."
                "Pada url http://localhost:5000 server akan mengembalikan pesan"
                "Ini adalah homepage atau pada url http://localhost:5000/about server akan mengembalikan pesan “Halo! Ini adalah halaman about. Pesan yang ditampilkan tampak besar dan tebal karena ia dibungkus oleh elemen heading HTML",
                softWrap: true),
          ),
        ),
      ]),
    );
  }
}

//cara scrol dengan ListView, Expanded, dan SingleChildScrollView
//expanded digunakan untuk komponen dinamis
