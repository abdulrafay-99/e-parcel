import 'package:e_parcel/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customListTile extends StatelessWidget {
  const customListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 16, bottom: 22),
        padding: EdgeInsets.symmetric(vertical: 51, horizontal: 32),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: primary_color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Spent",
                  style: GoogleFonts.raleway(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  "930.83",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            IconButton(
              iconSize: 40,
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white, fixedSize: Size(70, 70)),
              onPressed: () {},
              icon: Icon(
                Icons.qr_code_scanner_rounded,
                color: primary_color,
              ),
            )
          ],
        ));
  }
}

//Second List TIle

class customListTile2 extends StatelessWidget {
  const customListTile2({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      {
        'name': 'Second Shop',
        'time': '2:39 AM',
        'amount': '€17.96',
        'date': 'Apr 13,2023'
      },
      {
        'name': 'Bouchon Lyon',
        'time': '12:52 PM',
        'amount': '€10.98',
        'date': 'Apr 11,2023'
      },
      {
        'name': 'Bouchon Lyon',
        'time': '12:52 PM',
        'amount': '€10.98',
        'date': 'Apr 11,2023'
      }
    ];

    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, int index) {
          return Container(
              margin: EdgeInsets.symmetric(vertical: 25 / 2),
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 12),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x1E000000),
                    blurRadius: 10,
                    offset: Offset(-1, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        list[index]['name']!,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: black_color,
                        ),
                      ),
                      Text(
                        list[index]['time']!,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: black_color),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(list[index]['amount']!,
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: pink_color)),
                      Text(list[index]['date']!,
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: black_color))
                    ],
                  )
                ],
              ));
        });
  }
}
