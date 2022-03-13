import 'package:doublet_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:doublet_app/constants/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late double _height;
  late double _width;
  late List<Product> productList;
  late PageController pageController;

  @override
  void initState() {
    productList = Constants.getProducts();
    pageController = PageController(viewportFraction: 6.0);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return DefaultTabController(
        length: 3,
        child: Scaffold(
            // backgroundColor:Colors.grey[100],
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              leading: null,
              title: const Text(
                'Double T',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.0),
              ),
            ),
            body: Container(
                padding: const EdgeInsets.all(0.0),
                height: _height,
                width: _width,
                child: Stack(
                  children: [
                    SizedBox(
                        height: 40,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const AlwaysScrollableScrollPhysics(),
                            children: [
                              const AspectRatio(
                                aspectRatio: 2.1,
                                child: Center(
                                  child: Text(
                                    'Nike',
                                    style: TextStyle(
                                        /* color:_isSelected ? Colors.black:Colors.grey,*/
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              AspectRatio(
                                aspectRatio: 3.2 / 1,
                                child: Center(
                                  child: Text(
                                    'Adidas',
                                    style: TextStyle(
                                        fontSize: 16.5,
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              AspectRatio(
                                aspectRatio: 3.2 / 1,
                                child: Center(
                                  child: Text(
                                    'Jordan',
                                    style: TextStyle(
                                        fontSize: 16.5,
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              AspectRatio(
                                aspectRatio: 3.2 / 1,
                                child: Center(
                                  child: Text(
                                    'Puma',
                                    style: TextStyle(
                                        fontSize: 16.5,
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              AspectRatio(
                                aspectRatio: 3.2 / 1,
                                child: Center(
                                  child: Text(
                                    'Reebok',
                                    style: TextStyle(
                                        fontSize: 16.5,
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ])),
                    Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(top: 0.0, left: 20.0),
                                  alignment: Alignment.center,
                                  width: 15.0,
                                  // color: Colors.red,
                                  child: RotatedBox(
                                    quarterTurns: 7,
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Upcoming',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.0),
                                        children: [
                                          WidgetSpan(
                                            child: RotatedBox(quarterTurns: -7),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0, left: 20.0),
                                  alignment: Alignment.center,
                                  width: 15,
                                  child: RotatedBox(
                                    quarterTurns: 7,
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Featured',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.0),
                                        children: [
                                          WidgetSpan(
                                            child: RotatedBox(quarterTurns: -7),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0, left: 20.0),
                                  alignment: Alignment.center,
                                  width: 15.0,
                                  // color: Colors.red,
                                  child: RotatedBox(
                                    quarterTurns: 7,
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'New',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.0),
                                        children: [
                                          WidgetSpan(
                                            child: RotatedBox(quarterTurns: -7),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        )),
                  ],
                ))));
  }
}
