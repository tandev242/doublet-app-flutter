import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:doublet_app/screens/register.dart';
import 'package:doublet_app/screens/login.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 229, 240, 215),
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 80),
              child: Column(
                children: [
                  Text(
                    'Welcome to DOUBLE T',
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 247, 99, 1)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '" DoubleT is best choice for everyone ! "',
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: const Color(0xffA6A6A6)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/sports.png',
                    width: 400,
                    height: 267,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                      width: 261,
                      height: 49,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFEF60),
                          borderRadius: BorderRadius.circular(30)),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const LoginScreen()));
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Sign In Here',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff312C6A)),
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hey, Don’t Have Account ? ',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: const Color(0xff312C6A))),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const RegisterScreen()));
                        },
                        child: Text('Sign Up Here',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: const Color(0xff312C6A),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
