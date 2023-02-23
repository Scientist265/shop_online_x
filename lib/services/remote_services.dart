import 'package:http/http.dart' as http;
import 'package:shop_online_x/product.dart';
import 'dart:core';

var url = Uri.parse(
    'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(url);

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productsFromJson(jsonString);
    } else {
      // ignore: avoid_print
      print('something is wrong');
    }
    return null;
  }
}
