import 'package:e_parcel/colors.dart';
import 'package:e_parcel/utilities/curve_designs.dart';
import 'package:e_parcel/utilities/decorations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen10 extends StatefulWidget {
  const Screen10({super.key});

  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  @override
  Widget build(BuildContext context) {
    var iconColor = primary_color;
    final list = [
      {
        'card': '1234564242',
        'name': 'Matteo Silva',
      },
      {
        'card': '2334334242',
        'name': 'James Wilson',
      },
      {
        'card': '2334334242',
        'name': 'James Wilson',
      },
      {
        'card': '2334334242',
        'name': 'James Wilson',
      },
      {
        'card': '2334334242',
        'name': 'James Wilson',
      },
      {
        'card': '2334334242',
        'name': 'James Wilson',
      }
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Save Cards",
            style: GoogleFonts.poppins(
                color: black_color, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: black_color,
            ),
            onPressed: () {},
          ),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: screenHeight * 0.5,
                child: ListView.builder(
                    shrinkWrap: true,
                    clipBehavior: Clip.hardEdge,
                    itemCount: list.length,
                    itemBuilder: (Context, index) {
                      final card = list[index]['card']?.substring(6, 10);
                      return Container(
                        decoration: containerDecoration(),
                        margin: EdgeInsets.symmetric(vertical: 27 / 2),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 23),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.place,
                                        size: 38,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "*** ***" + card!,
                                            style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(list[index]['name']!,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    iconColor = Colors.grey;
                                  });
                                },
                                icon: Icon(Icons.check_circle),
                                color: iconColor,
                                iconSize: 32,
                              )
                            ]),
                      );
                    }),
              ),
              GestureDetector(
                child: Container(
                    width: screenWidth - 48,
                    height: 68,
                    decoration: containerDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: primary_color,
                        ),
                        Text(
                          "Add Card",
                          style: GoogleFonts.raleway(
                              color: primary_color,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
              ),
              bottomCurves(screenWidth, screenHeight)
            ],
          );
        }));
  }
}
