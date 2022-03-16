import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  ProductDetailScreenState createState() => ProductDetailScreenState();
}

class ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  bool _open = true;
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
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.file_upload_outlined),
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                padding: const EdgeInsets.all(40),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/mybag_img1.png"),
                      fit: BoxFit.contain),
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/mybag_img1.png"),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Nike Phantom Hadilao",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/heart.svg'))
                      ],
                    ),
                    const Text(
                      "Nike brand",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon:
                                    SvgPicture.asset('assets/icons/eksi.svg')),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: const Color(0xffE2E2E2),
                                  width: 1,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(17)),
                              ),
                              child: const Center(child: Text("1")),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon:
                                    SvgPicture.asset('assets/icons/arti.svg')),
                          ],
                        ),
                        const Text(
                          "2500K",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ExpansionTile(
                      trailing: _open
                          ? SvgPicture.asset('assets/icons/backarrow.svg')
                          : const Icon(Icons.keyboard_arrow_down,
                              size: 32, color: Colors.black),
                      onExpansionChanged: _openExpansionTile,
                      tilePadding: const EdgeInsets.only(right: 20),
                      expandedAlignment: Alignment.topLeft,
                      iconColor: Colors.black,
                      title: const Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff181725),
                            fontWeight: FontWeight.w900),
                      ),
                      children: const <Widget>[
                        Text(
                          'NIKE, Inc., together with its subsidiaries, designs, develops, markets, and sells athletic footwear, apparel, equipment, and accessories worldwide.',
                          style: TextStyle(
                              color: Color(0xff7C7C7C),
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sizes",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Color(0xffEBEBEB),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: const Center(
                                child: Text(
                                  "[37], [38], [39]",
                                  style: TextStyle(
                                      color: Color(0xff7C7C7C),
                                      fontSize: 9,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/backarrow.svg'))
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Review",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/star.png"),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/backarrow.svg'))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: const Color(0xff53B175),
              fixedSize: const Size(double.infinity, 67),
              padding: const EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19.0),
              ),
            ),
            onPressed: () {},
            child: const SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  "Add To Basket",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  void _openExpansionTile(bool value) {
    setState(() {
      _open = value;
    });
  }
}
