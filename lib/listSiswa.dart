import 'package:flutter/material.dart';
import 'package:listsiswa/siswa_model.dart';

class ListSiswa extends StatefulWidget {
  const ListSiswa({Key? key}) : super(key: key);

  @override
  State<ListSiswa> createState() => _ListSiswaState();
}

class _ListSiswaState extends State<ListSiswa> {

  List<NameModel> data = [
    NameModel("Adhanafi Ilyas", "A", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Ahmad Aziz", "A", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Akbar Rizqullah", "A", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Alwan Athallah", "A", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Amri Iqra", "A", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Sejati Adli", "S", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Andika Setya", "A", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Antariksa Kusuma", "A", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Azzra Rienov", "A", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Bayu Septian", "B", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Bhre Nabil", "B", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Bimo Adi", "B", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Daffa Syauqi", "D", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Danar Gading", "D", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Dimas Bagus", "D", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Firdaus Hafidz", "F", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Hegel Al Rafli", "H", "Pengembang Perangkat Lunak Dan Gim"),
    NameModel("Hibatullah Fawwaz", "H", "Pengembang Perangkat Lunak Dan Gim"),
  ];

  Widget avatar(int index){
    return CircleAvatar(
      radius: 24,
      child: Text(
        data[index].kodeName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  Widget textData(int index){
    return Expanded(child: Container(
      margin: EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            data[index].name,
            style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Text(data[index].jurusan),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("List Siswa")),),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: data.length,
        itemBuilder: (buildContext, index) {
          return GestureDetector(
            onTap: (){
              //snackbar
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("${data[index].name}"),
                duration: Duration(seconds: 2),
              ));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  avatar(index),
                  textData(index),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}