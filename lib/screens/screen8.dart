import 'package:e_parcel/colors.dart';
import 'package:e_parcel/screens/styles.dart';
import 'package:e_parcel/utilities/listTile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen8 extends StatelessWidget {
  const Screen8({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Mateo Silva';
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: primary_color,
          unselectedItemColor: grey_color,
          type: BottomNavigationBarType.shifting,
          currentIndex: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.task_outlined,
              ),
              label: "Parcel",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              label: "More",
            ),
          ]),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.png')),
                SizedBox(
                  width: 17,
                ),
                Text(
                  name,
                  style: raleway500.copyWith(fontWeight: FontWeight.w700),
                ),
                Expanded(child: SizedBox()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    color: Color(0xFF06B198),
                    Icons.notifications_rounded,
                  ),
                )
              ],
            ),
            customListTile(),
            Text(
              'Transaction List',
              style: GoogleFonts.raleway(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(child: const customListTile2()),
          ],
        ),
      ),
    );
  }
}
