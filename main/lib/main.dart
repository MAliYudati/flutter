import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(
          child: Text(
            "Login Page",
            style: GoogleFonts.poppins(),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Belajar',
              style: GoogleFonts.robotoMono(
                color: Colors.green,
                fontSize: 25,
              ),
            ),
            Text(
              "CYBER SECURITY",
              style: GoogleFonts.righteous(
                color: Colors.green,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    hintText: "Username",
                    hintStyle: GoogleFonts.robotoMono(color: Colors.green),
                    labelStyle: const TextStyle(color: Colors.black)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    hintText: "Password",
                    hintStyle: GoogleFonts.robotoMono(color: Colors.green),
                    labelStyle: const TextStyle(color: Colors.black)),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const FirstRoute();
                }));
              },
              icon: const Icon(Icons.input_rounded),
              color: Colors.green,
              tooltip: "Button Login",
              iconSize: 50,
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              "Tidak Bisa Masuk ?",
              style: GoogleFonts.poppins(),
            ),
            Text(
              "Artinya Anda Belum Bayar",
              style: GoogleFonts.poppins(),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
