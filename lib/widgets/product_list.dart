import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);
  static double height = 230;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        cacheExtent: height,
        itemExtent: 170,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: const Color(0xffE2E2E2),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Nike_Shoe_PNG.png',
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          const Text(
                            'Nike shoes',
                            style: TextStyle(
                                color: Color(0xff181725),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: SizedBox(
                          width: 45,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.black,
                              primary: const Color(0xff53B175),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Image.asset('assets/images/plus_sign.png',
                                height: 17, color: const Color(0xffffffff)),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 0,
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text("\₫2000K",
                              style: TextStyle(
                                  color: Color(0xff181725),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
