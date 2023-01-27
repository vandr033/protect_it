import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protect_it/Pages/login.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        child: Column(
          //add padding
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            //TODO: Add Logo Here and Create assets Folder
            Image.asset(
              'assets/images/protect_it.png',
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Please create an\n account to get started!',
              style: GoogleFonts.khula(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
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
                  contentPadding: EdgeInsets.all(0),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Confirm Email',
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
                  contentPadding: EdgeInsets.all(0),
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
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Confirm Password',
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
                const snackBar =
                    SnackBar(content: Text('Successfuly Signed Up!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Center(
                child: Text(
                  style: GoogleFonts.khula(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                  'Sign Up',
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
                      text: 'Already have an Account?\n',
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
                                  builder: (context) => loginPage()));
                        }),
                      text: 'Log In Here',
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
