import 'package:e_parcel/colors.dart';
import 'package:e_parcel/utilities/card.dart';
import 'package:e_parcel/utilities/curve_designs.dart';
import 'package:e_parcel/utilities/decorations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen9 extends StatelessWidget {
  const Screen9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('url'),
                    radius: 40,
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Assistant',
                        style: GoogleFonts.raleway(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.call,
                    size: 20,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Text("+331-123456787",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: black_color,
                          fontWeight: FontWeight.w400))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.mail),
                  SizedBox(
                    width: 11,
                  ),
                  Text("sixiwa3232@peogi.com",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: black_color,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(heading: "Total Spent", data: "€111789.22"),
                  CustomCard(heading: "Total Transactions", data: "11")
                ],
              ),
              FundingSourcesTile(),
              GestureDetector(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    height: 66,
                    decoration: containerDecoration(),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF06B198),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          "Edit Profile",
                          style: GoogleFonts.raleway(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: black_color),
                        )
                      ],
                    )),
              ),
              GestureDetector(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    height: 66,
                    decoration: containerDecoration(),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF450471),
                          child: Icon(
                            Icons.key,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          "Change Pin",
                          style: GoogleFonts.raleway(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: black_color),
                        )
                      ],
                    )),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class FundingSourcesTile extends StatelessWidget {
  const FundingSourcesTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration(),
      padding: EdgeInsets.symmetric(vertical: 28, horizontal: 32),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Text(
              "Funding Sources",
              style: GoogleFonts.raleway(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Icon(
                  Icons.place,
                  size: 38,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "*** *** 4242",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Text("Matteo Silva",
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                  ],
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Text("Primary",
                style: GoogleFonts.raleway(
                    fontSize: 16,
                    color: primary_color,
                    fontWeight: FontWeight.w400)),
            TextButton(
              onPressed: () {},
              child: Text("Change",
                  style: GoogleFonts.raleway(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400)),
            )
          ],
        )
      ]),
    );
  }
}
