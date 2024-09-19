import 'package:get/get.dart';
import 'package:globosoft/Model/model_class.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      final response = await http.get(
          Uri.parse('https://mansharcart.com/api/products/category/139/key/123456789'));
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        List<dynamic> productsJson = jsonData['products'];
        productList.value = productsJson.map((product) => Product.fromJson(product)).toList();
      } else {
        print("Error fetching data");
      }
    } catch (e) {
      print("Error: $e");
    } finally {
      isLoading(false);
    }
  }
}
