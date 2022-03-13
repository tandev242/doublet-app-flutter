import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, top: 80, bottom: 80),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Let\'s Go Login :)',
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff312C6A)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '" We are Your Favorite UI Designer "',
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: const Color(0xffA6A6A6)),
                  ),
                ),
                const SizedBox(
                  height: 54,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Email',
                    style: GoogleFonts.poppins(
                        fontSize: 20, color: const Color(0xff312C6A)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: const Color(0xffCCCCCC).withOpacity(0.25),
                        offset: const Offset(0, 10),
                        blurRadius: 10)
                  ]),
                  child: TextField(
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: const Color(0xff464646),
                        filled: true,
                        hintText: '  Input Email Here',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Password',
                    style: GoogleFonts.poppins(
                        fontSize: 20, color: const Color(0xff312C6A)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: const Color(0xffCCCCCC).withOpacity(0.25),
                        offset: const Offset(0, 10),
                        blurRadius: 10)
                  ]),
                  child: TextField(
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                    obscureText: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: const Color(0xff464646),
                        filled: true,
                        hintText: '  Input Password Here',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text(
                      'Forgot Your Password ?',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: const Color(0xff312C6A),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
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
                        onTap: () {},
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Sign In Now',
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
                    Text('Wanna Back to First Page ? ',
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: const Color(0xff312C6A))),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text('Let\'s Go',
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
    );
  }
}