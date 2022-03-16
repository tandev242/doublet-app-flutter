import 'package:doublet_app/widgets/product_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            toolbarHeight: 80,
            title: SizedBox(
                child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/images/doublet.png', height: 100),
                  const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "DoubleT sport",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 123, 0),
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ))
                ])
              ],
            ))),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Column(
                  children: [
                    TextField(
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(0, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Input search text',
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff7C7C7C)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 0.0, style: BorderStyle.none)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Image.asset(
                      'assets/images/grizman.jpg',
                      width: double.infinity,
                      height: 200,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Hot Products',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w900)),
                        TextButton(
                            onPressed: () {},
                            child: const Text('See all',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w900)))
                      ],
                    ),
                    const SizedBox(height: 10),
                    const ProductList(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Featured Products',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w900),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text('See all',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900)))
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const ProductList(),
                  ],
                ))));
  }
}
