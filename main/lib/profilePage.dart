import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(35.0),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/PP.jpg'),
                radius: 75,
              ),
            ),
            Text(
              "M Ali Yudati",
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Text(
              "ali.065119001@unpak.ac.id",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            Text(
              "082111191828",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.fromLTRB(0, 35.0, 0, 35.0),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: Colors.green,
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "NPM",
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "065119001 ",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  Stack(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Status Keaktifan",
                            style: GoogleFonts.poppins(color: Colors.white),
                          )),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Aktif",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  Stack(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Program Studi",
                            style: GoogleFonts.poppins(color: Colors.white),
                          )),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Ilmu Komputer",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  Stack(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Jenjang Pendidikan",
                            style: GoogleFonts.poppins(color: Colors.white),
                          )),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "S1",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
