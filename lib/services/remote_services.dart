
import 'package:http/http.dart' as http;
import 'package:shop_online_x/product.dart';
import 'dart:core';

var url = Uri.parse('http://makeup-api.herokuapp.com/api/v1/products.json'); 

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
try{
     var response = await client.get(url);

    if (response == 200) {
      var jsonString = response.body;
      return productsFromJson(jsonString);
      print(response.body);
    } else {
      print('there is error');
    }
    
}
catch(e){
      print(e);
    }
  }
}
