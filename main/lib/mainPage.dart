import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/profilePage.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main Page',
          style: GoogleFonts.poppins(),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondRoute();
                }));
              },
              icon: Icon(Icons.person))
        ],
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.30,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 90,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text(
                    'Menu',
                    style:
                        GoogleFonts.poppins(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                leading: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SecondRoute();
                      }));
                    },
                    child: Text(
                      "Profile",
                      style:
                          GoogleFonts.robotoMono(fontWeight: FontWeight.bold),
                    )),
              ),
              ListTile(
                leading: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const MyApp();
                      }));
                    },
                    child: Text(
                      "Log Out",
                      style:
                          GoogleFonts.robotoMono(fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.green)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.label,
                        color: Colors.green,
                      ),
                      Text(
                        "Learn Network",
                        style: GoogleFonts.robotoMono(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Read  More"),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.green)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.label,
                        color: Colors.green,
                      ),
                      Text(
                        "Learn Python",
                        style: GoogleFonts.robotoMono(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Read  More"),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.green)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.label,
                        color: Colors.green,
                      ),
                      Text(
                        "Learn Linux",
                        style: GoogleFonts.robotoMono(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Read  More"),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.green)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.label,
                        color: Colors.green,
                      ),
                      Text(
                        "Learn PenTest",
                        style: GoogleFonts.robotoMono(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Read  More"),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
