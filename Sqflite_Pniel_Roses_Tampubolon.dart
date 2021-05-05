import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter penyimpanan data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('PERPUSTAKAAN PINTAR'),
        ),
        body: Peminjam(),
      ),
    );
  }
}

class DataPeminjam{
  String nama;
  String tgllahir;
  String jbuku;
  String tglpinjam;
  String tglkembali;
  
  DataPeminjam({this.tgllahir, this.nama, this.tglpinjam, this.jbuku, this.tglkembali});
  
}

// class Pinjam
class Peminjam extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Peminjam> {
  //deklarasi variabel
  final txtnamapeminjam = TextEditingController();
  final txttgllahir = TextEditingController();
  final txtjbuku = TextEditingController();
  final txttglpinjam = TextEditingController();
  final txttglkembali = TextEditingController();

  List<Widget> data = [];

  onTambah() {
    setState(() {
       data.add(ListTile(leading: Text(txtnamapeminjam.text)));
       data.add(ListTile(leading: Text(txttgllahir.text)));
       data.add(ListTile(leading: Text(txtjbuku.text)));
       data.add(ListTile(leading: Text(txttglpinjam.text))); 
       data.add(ListTile(leading: Text(txttglkembali.text))); 
      txttgllahir.clear();
      txtnamapeminjam.clear();
      txttglpinjam.clear();
      txtjbuku.clear();
      txttglkembali.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
               TextField(
                controller: txtnamapeminjam,
                decoration: InputDecoration(hintText: 'Nama Peminjam'),
              ),
              TextField(
                controller: txttgllahir,
                decoration: InputDecoration(hintText: 'Tanggal Lahir'),
              ),
              TextField(
                controller: txtjbuku,
                decoration: InputDecoration(hintText: 'Judul Buku'),
              ),
              TextField(
                controller: txttglpinjam,
                decoration: InputDecoration(hintText: 'Tanggal Pinjam'),
              ),
              TextField(
                controller: txttglkembali,
                decoration: InputDecoration(hintText: 'Tanggal Dikembalikan'),
              ),
              Divider(height: 5.0),
              ElevatedButton(child: Text("Tambah"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}