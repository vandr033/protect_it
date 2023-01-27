import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protect_it/Pages/SignUp.dart';
import 'package:protect_it/Pages/homePage.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        child: Column(
          //add padding
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //TODO: Add Logo Here and Create assets Folder
            SizedBox(
              height: 150,
            ),
            Image.asset(
              'assets/images/protect_it.png',
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'The one place for all \n your passwords and accounts!',
              style: GoogleFonts.khula(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),

            SizedBox(
              height: 100,
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Email',
                  hintStyle: GoogleFonts.khula(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Password',
                  hintStyle: GoogleFonts.khula(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32))),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  backgroundColor: Color(0xFFFDD804),
                  fixedSize: Size(MediaQuery.of(context).size.width, 50)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homePage()));
              },
              child: Center(
                child: Text(
                  style: GoogleFonts.khula(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                  'Login',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'Need an Account?\n',
                      style: GoogleFonts.khula(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signUp()));
                        }),
                      text: 'Create One Here',
                      style: GoogleFonts.khula(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline))
                ]))
          ],
        ),
      ),
    );
  }
}
