import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_online_x/product.dart';
import 'package:shop_online_x/services/remote_services.dart';

class ProductController extends GetxController {
  // ignore: deprecated_member_use
  var isLoading = true.obs;
  var productList = <Product>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
    isLoading(false);
  }
}
