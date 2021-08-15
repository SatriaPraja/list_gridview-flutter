import 'package:list_gridview/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gridviewapps extends StatelessWidget {
  Items item1 = new Items(
      title: "Kelas",
      subtitle: "XII RPL 6",
      img: "assets/festival.png");

  Items item2 = new Items(
    title: "Absen",
    subtitle: "02",
    img: "assets/calendar.png",
  );
  Items item3 = new Items(
    title: "Alamat",
    subtitle: "Banyumas, Jawa Tengah",
    img: "assets/map.png",
  );
  Items item4 = new Items(
    title: "Makanan Favorit",
    subtitle: "Ayam Bakar",
    img: "assets/food.png",
  );
  Items item5 = new Items(
    title: "Pekerjaan",
    subtitle: "Pelajar",
    img: "assets/todo.png",
  );
  Items item6 = new Items(
    title: "Jurusan",
    subtitle: "Rekayasa Perangkat Lunak",
    img: "assets/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = kPrimary;

    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String img;
  Items({required this.title, required this.subtitle, required this.img});
}
