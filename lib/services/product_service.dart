import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:arvaaksesoris/models/product_model.dart';

class ProductService {
  // String baseUrl = 'https://shamo-backend.buildwithangga.id/api';
  String baseUrl = 'http://192.168.168.44:8000/api';
  // String baseUrl = 'toko-backend.test/api';

  Future<List<ProductModel>> getProducts() async {
    var url = '$baseUrl/products';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
