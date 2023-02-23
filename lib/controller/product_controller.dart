import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_online_x/product.dart';
import 'package:shop_online_x/services/remote_services.dart';

class ProductController extends GetxController {
  // ignore: deprecated_member_use
  var productList = <Product>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products;
    }
  }
}
