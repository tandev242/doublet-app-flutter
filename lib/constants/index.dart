import 'package:flutter/material.dart';
import 'package:doublet_app/models/product.dart';

class Constants {
  static List<Product> getProducts() {
    Color? orange = Colors.orange[300];
    Color? blue = Colors.orange[300];
    Color? cyan = Colors.orange[300];
    Color? grey = Colors.orange[300];

    return [
      Product(orange!, 'assets/images/mybag_img1.png', 'NIKE', 'EPIC_REACT',
          '\$130.00'),
      Product(blue!, 'assets/images/mybag_img1.png', 'NIKE', 'EPIC_REACT',
          '\$130.00'),
      Product(cyan!, 'assets/images/mybag_img1.png', 'NIKE', 'EPIC_REACT',
          '\$130.00'),
      Product(grey!, 'assets/images/mybag_img1.png', 'NIKE', 'EPIC_REACT',
          '\$130.00'),
    ];
  }
}
