import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController addressController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isValidName = true;
  bool isValidAddress = true;
  bool isValidEmail = true;
  bool isValidPassword = true;

  void validateTextField() {
    String address = addressController.text;
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    if (address.isEmpty) {
      setState(() {
        isValidAddress = false;
      });
    } else {
      setState(() {
        isValidAddress = true;
      });
    }
    if (name.isEmpty) {
      setState(() {
        isValidName = false;
      });
    } else {
      setState(() {
        isValidName = true;
      });
    }
    if (email.isEmpty || !email.contains('@')) {
      setState(() {
        isValidEmail = false;
      });
    } else {
      setState(() {
        isValidEmail = true;
      });
    }
    if (password.isEmpty || password.length < 6) {
      setState(() {
        isValidPassword = false;
      });
    } else {
      setState(() {
        isValidPassword = true;
      });
    }
  }

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
                    'REGISTER',
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff312C6A)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '" DoubleT is best choice 4men "',
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: const Color(0xffA6A6A6)),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Name',
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
                    controller: nameController,
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                    keyboardType: TextInputType.name,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        errorText:
                            isValidName ? null : 'Please enter a valid name',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: const Color(0xff464646),
                        filled: true,
                        hintText: '  Input Name Here',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Address',
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
                    controller: addressController,
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                    keyboardType: TextInputType.multiline,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        errorText: isValidAddress
                            ? null
                            : 'Please enter a valid address',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: const Color(0xff464646),
                        filled: true,
                        hintText: '  Input Address Here',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 40,
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
                    controller: emailController,
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        errorText: isValidEmail
                            ? null
                            : 'Please enter a valid email address',
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
                  height: 40,
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
                    controller: passwordController,
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                    keyboardType: TextInputType.streetAddress,
                    obscureText: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        errorText: isValidPassword
                            ? null
                            : 'Password must be at least 6 characters',
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
                        color: const Color.fromARGB(255, 241, 140, 23),
                        borderRadius: BorderRadius.circular(30)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          validateTextField();
                          if (isValidPassword &&
                              isValidEmail &&
                              isValidName &&
                              isValidAddress) {
                            Navigator.pushNamed(context, '/login');
                          }
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Register Now',
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
